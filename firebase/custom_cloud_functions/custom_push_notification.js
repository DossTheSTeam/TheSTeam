const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.customPushNotification = functions
  .region("europe-west1")
  .runWith({
    timeoutSeconds: 60,
  })
  .https.onCall(async (data, context) => {
    // <-- Ajout du mot-clé 'async' ici
    const userRef = data.userRef;
    const notificationTitle = data.notificationTitle;
    const notificationBody = data.notificationBody;
    // Write your code below!

    if (!userRef || !notificationTitle || !notificationBody) {
      return { success: false, message: "Missing parameters." };
    }

    // Créez la référence de document à partir du chemin (string)
    const firestoreUserRef = admin.firestore().doc(userRef);

    try {
      // 1. Récupérer le token FCM de l'utilisateur.
      const fcmTokensSnapshot = await firestoreUserRef
        .collection("fcm_tokens")
        .get();
      if (fcmTokensSnapshot.empty) {
        console.log("No FCM tokens found for user:", firestoreUserRef.path);
        return { success: false, message: "No FCM tokens found." };
      }

      const tokens = fcmTokensSnapshot.docs.map((doc) => doc.data().fcm_token);

      // 2. Construire le payload de la notification.
      const payload = {
        notification: {
          title: notificationTitle,
          body: notificationBody,
        },
        data: {
          type: "navigation",
          target_page: "MyNotifsList",
        },
      };

      // 3. Envoyer la notification.
      const response = await admin.messaging().sendToDevice(tokens, payload);

      console.log("Successfully sent message:", response);
      return { success: true, message: "Notification sent successfully." };
    } catch (error) {
      console.error("Error sending notification:", error);
      return { success: false, message: error.message };
    }

    // Write your code above!
    // Cette ligne n'est plus nécessaire car le code retourne déjà un résultat
  });
