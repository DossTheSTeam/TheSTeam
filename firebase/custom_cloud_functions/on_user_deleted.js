const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

const FIRESTORE_BATCH_LIMIT = 100;

exports.onUserDeleted = functions
  .region("europe-west1")
  .runWith({
    timeoutSeconds: 300,
    memory: "1GB",
  })
  .auth.user()
  .onDelete(async (user) => {
    const firestore = admin.firestore();
    const bucket = admin.storage().bucket();
    const uid = user.uid;
    const userRef = firestore.doc(`users/${uid}`);

    console.log(`Cleaning data for deleted user: ${uid}`);

    // -------- Helpers --------
    async function deleteFileFromUrl(bucket, url) {
      if (!url || typeof url !== "string") return;
      try {
        let path = null;
        if (url.includes("firebasestorage.googleapis.com")) {
          const m = url.match(/\/o\/(.*?)\?alt=media/);
          if (m && m[1]) path = decodeURIComponent(m[1]);
        } else if (url.startsWith("gs://")) {
          const prefix = `gs://${bucket.name}/`;
          path = url.startsWith(prefix)
            ? url.slice(prefix.length)
            : url.replace("gs://", "");
        } else {
          path = url;
        }
        if (!path) return;
        await bucket.file(path).delete();
        console.log(`Deleted storage file: ${path}`);
      } catch (err) {
        console.warn(`Could not delete file (${url}):`, err.message || err);
      }
    }

    async function deleteDocsInCollection(collectionRef, imageFields = []) {
      let query = collectionRef.limit(FIRESTORE_BATCH_LIMIT);
      while (true) {
        const snap = await query.get();
        if (snap.empty) break;

        const batch = firestore.batch();
        for (const doc of snap.docs) {
          const data = doc.data() || {};
          for (const f of imageFields) {
            if (data[f]) await deleteFileFromUrl(bucket, data[f]);
          }
          batch.delete(doc.ref);
        }
        await batch.commit();

        if (snap.size < FIRESTORE_BATCH_LIMIT) break;
        const last = snap.docs[snap.docs.length - 1];
        query = collectionRef.startAfter(last).limit(FIRESTORE_BATCH_LIMIT);
      }
    }

    // -------- 1) Sous-collections du user --------
    const subCollections = [
      { name: "my_teamslike" },
      { name: "my_teams" },
      { name: "cart" },
      { name: "my_bets" },
      { name: "my_post" },
      { name: "images", imageFields: ["image"] },
      { name: "my_notifications", imageFields: ["image"] },
    ];

    for (const sc of subCollections) {
      try {
        console.log(`Deleting subcollection ${sc.name}`);
        const colRef = userRef.collection(sc.name);
        await deleteDocsInCollection(colRef, sc.imageFields || []);
      } catch (err) {
        console.error(`Error deleting subcollection ${sc.name}:`, err);
      }
    }

    // -------- 2) Supprimer fichiers du doc user --------
    try {
      const userDoc = await userRef.get();
      if (userDoc.exists) {
        const data = userDoc.data() || {};
        if (data.photo_url) await deleteFileFromUrl(bucket, data.photo_url);
        if (data.image_fond) await deleteFileFromUrl(bucket, data.image_fond);
      }
    } catch (err) {
      console.error(`Error deleting images from user doc users/${uid}:`, err);
    }

    // -------- 3) Supprimer le doc user lui-même --------
    try {
      console.log(`Deleting user document: users/${uid}`);
      await userRef.delete();
    } catch (err) {
      console.error(`Error deleting user document:`, err);
    }

    // -------- 4) Supprimer posts créés par ce user --------
    try {
      console.log(`Deleting posts for user: ${uid}`);
      let postsQuery = firestore
        .collection("posts")
        .where("member", "==", userRef)
        .limit(FIRESTORE_BATCH_LIMIT);

      while (true) {
        const snap = await postsQuery.get();
        if (snap.empty) break;

        const batch = firestore.batch();
        for (const doc of snap.docs) {
          const data = doc.data() || {};
          if (data.image) await deleteFileFromUrl(bucket, data.image);
          if (data.image2) await deleteFileFromUrl(bucket, data.image2);
          batch.delete(doc.ref);
        }
        await batch.commit();

        if (snap.size < FIRESTORE_BATCH_LIMIT) break;
        const last = snap.docs[snap.docs.length - 1];
        postsQuery = firestore
          .collection("posts")
          .where("member", "==", userRef)
          .startAfter(last)
          .limit(FIRESTORE_BATCH_LIMIT);
      }
    } catch (err) {
      console.error(`Error deleting posts for user ${uid}:`, err);
    }

    console.log(`✅ Cleanup finished for user: ${uid}`);
  });
