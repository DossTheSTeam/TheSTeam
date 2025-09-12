const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.deleteAllImagesOnDocumentDelete = functions
  .region("europe-west1")
  .runWith({ timeoutSeconds: 30, memory: "512MB" })
  .firestore.document("{collectionId}/{docId}")
  .onDelete(async (snap, context) => {
    const data = snap.data();
    if (!data) return;

    const bucket = admin.storage().bucket();

    // Champs images pour chaque collection parent
    const collectionImageFields = {
      users: ["image"],
      posts: ["image", "image2"],
      teams: ["logos"],
      events: ["end_image", "image_dom", "image_ext"],
    };

    const collection = context.params.collectionId;
    const fields = collectionImageFields[collection] || [];

    // Supprimer les fichiers du document parent
    for (const field of fields) {
      if (data[field]) {
        try {
          let path = data[field].match(/o\/(.*?)\?alt=media/)[1];
          path = decodeURIComponent(path);
          await bucket.file(path).delete();
          console.log(`Deleted file: ${path}`);
        } catch (error) {
          console.error(
            `Error deleting ${field} in collection ${collection}:`,
            error,
          );
        }
      }
    }

    // Sous-collections à traiter
    const subCollections = [
      "my_notifications",
      "event_messages",
      "team_messages",
      "images",
      "post_messages",
    ];

    for (const subCol of subCollections) {
      const subSnap = await snap.ref.collection(subCol).get();
      for (const doc of subSnap.docs) {
        const subData = doc.data();
        if (subData.image) {
          // Tous les sous-documents ont un champ "image"
          try {
            let path = subData.image.match(/o\/(.*?)\?alt=media/)[1];
            path = decodeURIComponent(path);
            await bucket.file(path).delete();
            console.log(`Deleted sub-collection file: ${path}`);
          } catch (error) {
            console.error(
              `Error deleting file in sub-collection ${subCol}:`,
              error,
            );
          }
        }
      }
    }
  });
