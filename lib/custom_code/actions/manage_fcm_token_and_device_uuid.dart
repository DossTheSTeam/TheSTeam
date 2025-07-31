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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart'; // For defaultTargetPlatform

/// Handles obtaining notification permissions, retrieving the FCM token,
/// persisting a unique device UUID, and storing/updating the token in Firestore.
///
/// This action ensures that a unique UUID is generated and stored locally for each device.
/// It then uses this UUID as the document ID in the `fcm_tokens` subcollection
/// of the user in Firestore to store or update the FCM token.
///
/// Parameters:
///   - `userId`: The ID of the authenticated user.
Future<void> manageFcmTokenAndDeviceUuid(String userId) async {
  if (userId.isEmpty) {
    debugPrint(
        'manageFcmTokenAndDeviceUuid: userId is empty. Operation cancelled.');
    return;
  }

  try {
    // 1. Request notification permissions
    // This is crucial for iOS and good practice for Android even if often less strict.
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

    debugPrint('FCM: User granted permission: ${settings.authorizationStatus}');

    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      debugPrint('FCM: Permissions denied by user. Cannot get FCM token.');
      return;
    }

    // 2. Retrieve the FCM token for the device
    String? fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken == null) {
      debugPrint('FCM: Failed to get FCM token. Token is null.');
      return;
    }

    debugPrint('FCM: Retrieved FCM Token: $fcmToken');

    // 3. Manage the device UUID for local persistence
    // This UUID identifies the app installation on this specific device.
    final prefs = await SharedPreferences.getInstance();
    String? deviceUuid = prefs.getString('device_uuid');

    if (deviceUuid == null) {
      // Use the custom function to generate UUID
      deviceUuid = generateUuid();
      await prefs.setString('device_uuid', deviceUuid);
      debugPrint(
          'manageFcmTokenAndDeviceUuid: New UUID generated and stored locally: $deviceUuid');
    } else {
      debugPrint(
          'manageFcmTokenAndDeviceUuid: Existing UUID retrieved locally: $deviceUuid');
    }

    // 4. Determine device type (Android/iOS)
    String platform;
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      platform = 'ios';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      platform = 'android';
    } else {
      platform = 'unknown'; // For other platforms (web, desktop)
      debugPrint(
          'FCM: Unsupported platform for deviceType: $defaultTargetPlatform');
    }

    // 5. Store/Update the token in Firestore
    // The deviceUuid is used as the document ID to allow a user to have
    // multiple tokens (one per device).
    final userDocRef =
        FirebaseFirestore.instance.collection('users').doc(userId);
    final fcmTokenDocRef = userDocRef.collection('fcm_tokens').doc(deviceUuid);

    final currentTime =
        FieldValue.serverTimestamp(); // Use server timestamp for consistency

    await fcmTokenDocRef.set(
      {
        'token': fcmToken,
        'platform': platform,
        'updatedAt': currentTime,
        // 'createdAt' is only added if the document does not exist yet
        if (!(await fcmTokenDocRef.get()).exists) 'createdAt': currentTime,
      },
      SetOptions(
          merge:
              true), // Merges new data with existing, does not delete 'createdAt' if already there
    );
    debugPrint(
        'manageFcmTokenAndDeviceUuid: FCM Token saved/updated for UUID $deviceUuid.');
  } catch (e) {
    debugPrint('FCM: Error in manageFcmTokenAndDeviceUuid Custom Action: $e');
  }
}
