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
import 'package:cloud_firestore/cloud_firestore.dart'; // Still good to have for general Firebase/Firestore interactions
import 'package:flutter/foundation.dart'; // For kIsWeb, TargetPlatform

Future<bool> getAndSaveFcmToken(String uid) async {
  try {
    // 1. Demander les permissions de notification (important pour iOS)
    // Cette partie est déjà gérée par "Automatically Prompt Users for Permission" dans FlutterFlow
    // ou par l'action "Request Permissions" que vous avez déjà.
    // Cependant, la documentation FlutterFlow suggère de le faire aussi côté code pour être sûr.
    NotificationSettings settings =
        await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    print('FCM: User granted permission: ${settings.authorizationStatus}');

    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      print('FCM: Permissions denied by user. Cannot get FCM token.');
      return false;
    }

    // 2. Récupérer le jeton FCM de l'appareil
    String? fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken == null) {
      print('FCM: Failed to get FCM token. Token is null.');
      return false;
    }

    print('FCM: Retrieved FCM Token: $fcmToken');

    // 3. Déterminer le type d'appareil (Android/iOS)
    String deviceType;
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      deviceType = 'ios';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      deviceType = 'android';
    } else {
      deviceType = 'web'; // Or other for non-mobile platforms
      print('FCM: Unsupported platform for deviceType: $defaultTargetPlatform');
    }

    // 4. Préparer les données pour la Cloud Function
    // userDocPath must be in "users/USER_ID" format
    // Now, we construct the userDocPath from the provided UID.
    final String userDocPath = 'users/$uid';

    // 5. Call the Cloud Function 'addFcmToken'
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('addFcmToken');

    print('FCM: Calling addFcmToken Cloud Function with:');
    print('  userDocPath: $userDocPath');
    print('  fcmToken: $fcmToken');
    print('  deviceType: $deviceType');

    final result = await callable.call(<String, dynamic>{
      'userDocPath': userDocPath,
      'fcmToken': fcmToken,
      'deviceType': deviceType,
    });

    print('FCM: addFcmToken Cloud Function response: ${result.data}');

    // Check the response from the Cloud Function
    if (result.data != null &&
        result.data.toString().startsWith('Successfully')) {
      print('FCM: Token successfully sent to Cloud Function and stored.');
      return true;
    } else {
      print('FCM: Cloud Function reported an error: ${result.data}');
      return false;
    }
  } catch (e) {
    // Catch and log any error occurring during the Custom Action execution
    print('FCM: Error in getAndSaveFcmToken Custom Action: $e');
    return false;
  }
}
