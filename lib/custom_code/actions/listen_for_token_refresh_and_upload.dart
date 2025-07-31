// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart'; // For defaultTargetPlatform

// --- FONCTION DE HAUT NIVEAU POUR LES MESSAGES EN ARRIÈRE-PLAN ---
// Cette fonction DOIT être une fonction de haut niveau (en dehors de toute classe)
// pour que FirebaseMessaging.onBackgroundMessage fonctionne correctement.
// Dans FlutterFlow, le code d'une Custom Action est généré comme une fonction de haut niveau dans son propre fichier.
Future<void> _firebaseBackgroundMessageHandler(RemoteMessage message) async {
  // Log le message pour vérifier qu'il est bien reçu.
  // Ces logs apparaîtront dans les logs de l'appareil (Xcode pour iOS, logcat pour Android)
  // et potentiellement dans Firebase Crashlytics si configuré.
  debugPrint('Handling background message: ${message.messageId}');
  debugPrint(
      'Notification: ${message.notification?.title} - ${message.notification?.body}');
  debugPrint('Data: ${message.data}');

  // Ici, vous pouvez ajouter une logique personnalisée pour les notifications en arrière-plan :
  // - Enregistrer la notification dans une collection Firestore (ex: 'notifications_recues')
  // - Mettre à jour un App State si l'application est ramenée au premier plan plus tard
  // - Déclencher une notification locale si vous souhaitez un affichage visuel spécifique
  //   (cela nécessiterait l'intégration de 'flutter_local_notifications' et une logique supplémentaire).
  // Pour l'instant, le simple logging est suffisant pour confirmer la réception.

  // IMPORTANT : Si vous avez besoin d'accéder à d'autres services Firebase (Firestore, Auth, etc.)
  // dans ce gestionnaire d'arrière-plan, assurez-vous que Firebase est initialisé.
  // FlutterFlow gère normalement cette initialisation automatiquement au démarrage de l'application.
}

/// Initialise les écouteurs FCM pour le rafraîchissement du token et les messages en arrière-plan.
/// Cette action doit être appelée une fois au démarrage de l'application (par exemple, sur MyProfilPage On Page Load).
/// Paramètres:
///   - `userId`: L'ID de l'utilisateur authentifié.
Future<void> listenForTokenRefreshAndUpload(String userId) async {
  // Enregistre le gestionnaire de messages en arrière-plan.
  // Ceci doit être fait le plus tôt possible dans le cycle de vie de l'application.
  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessageHandler);
  debugPrint('FirebaseMessaging.onBackgroundMessage handler registered.');

  final prefs = await SharedPreferences.getInstance();
  String? deviceUuid = prefs.getString('device_uuid');

  // Assurez-vous que l'UUID de l'appareil est généré et stocké avant d'écouter les rafraîchissements
  // C'est une sécurité. Normalement, manageFcmTokenAndDeviceUuid l'aura déjà fait.
  if (deviceUuid == null) {
    // Utilise la fonction personnalisée pour générer l'UUID
    // Assurez-vous que generateUuid() est disponible et fonctionne.
    deviceUuid = generateUuid();
    await prefs.setString('device_uuid', deviceUuid);
    debugPrint(
        'listenForTokenRefreshAndUpload: Nouvel UUID généré et stocké localement pour le listener: $deviceUuid');
  } else {
    debugPrint(
        'listenForTokenRefreshAndUpload: UUID existant récupéré localement pour le listener: $deviceUuid');
  }

  // Détecter la plateforme
  String platform;
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    platform = 'ios';
  } else if (defaultTargetPlatform == TargetPlatform.android) {
    platform = 'android';
  } else {
    platform = 'unknown';
  }

  FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
    debugPrint(
        'listenForTokenRefreshAndUpload: Token FCM rafraîchi: $newToken');

    // Appel de la Cloud Function pour mettre à jour le token
    try {
      // Le nom de la Cloud Function est 'addFcmToken'
      final callable = FirebaseFunctions.instance.httpsCallable('addFcmToken');
      await callable.call(<String, dynamic>{
        'userId': userId,
        'tokenId':
            deviceUuid, // Utilise l'UUID de l'appareil comme ID du document
        'fcmToken': newToken,
        'platform': platform,
      });
      debugPrint(
          'listenForTokenRefreshAndUpload: Cloud Function addFcmToken appelée avec succès.'); // Log corrigé
    } on FirebaseFunctionsException catch (e) {
      debugPrint(
          'listenForTokenRefreshAndUpload: Erreur Cloud Function: code ${e.code}, message ${e.message}, détails ${e.details}');
    } catch (e) {
      debugPrint(
          'listenForTokenRefreshAndUpload: Erreur inattendue lors de l\'appel de la Cloud Function: $e');
    }
  });

  debugPrint(
      'listenForTokenRefreshAndUpload: Listener de rafraîchissement du token FCM activé.');
}
