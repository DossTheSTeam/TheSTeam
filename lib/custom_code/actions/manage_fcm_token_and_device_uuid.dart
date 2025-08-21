// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart'; // Importation du package uuid
import 'package:http/http.dart' as http; // Importation du package http
import 'dart:convert'; // Nécessaire pour encoder le JSON

/// Handles obtaining notification permissions, retrieving the FCM token,
/// persisting a unique device UUID, and sending the data to the new Cloud Run service.
Future<void> manageFcmTokenAndDeviceUuid(String userId) async {
  if (userId.isEmpty) {
    debugPrint(
        'manageFcmTokenAndDeviceUuid: userId is empty. Operation cancelled.');
    return;
  }

  try {
    // 1. Request notification permissions
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

    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      debugPrint('FCM: Permissions denied by user. Cannot get FCM token.');
      return;
    }

    // 2. Retrieve the FCM token
    String? fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken == null) {
      debugPrint('FCM: Failed to get FCM token. Token is null.');
      return;
    }

    // 3. Manage the device UUID for local persistence
    final prefs = await SharedPreferences.getInstance();
    String? deviceUuid = prefs.getString('device_uuid');

    if (deviceUuid == null) {
      const uuid = Uuid();
      deviceUuid = uuid.v4();
      await prefs.setString('device_uuid', deviceUuid);
      debugPrint(
          'manageFcmTokenAndDeviceUuid: New UUID generated and stored locally: $deviceUuid');
    } else {
      debugPrint(
          'manageFcmTokenAndDeviceUuid: Existing UUID retrieved locally: $deviceUuid');
    }

    // 4. Determine device type
    String platform;
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      platform = 'ios';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      platform = 'android';
    } else {
      platform = 'unknown';
      debugPrint(
          'FCM: Unsupported platform for deviceType: $defaultTargetPlatform');
    }

    // --- DÉBUT DE LA MODIFICATION MAJEURE ---
    // Remplacement de l'appel à Firestore par une requête HTTP POST vers Cloud Run
    // 5. URL du point de terminaison Cloud Run
    const String cloudRunUrl =
        'https://addfcmtoken-184746316510.europe-west9.run.app';

    // 6. Création du corps de la requête JSON
    final Map<String, dynamic> requestBody = {
      'userId': userId,
      'tokenId': deviceUuid, // Le document ID sera l'UUID du device
      'fcmToken': fcmToken,
      'platform': platform,
    };

    // 7. Envoi de la requête HTTP POST
    final response = await http.post(
      Uri.parse(cloudRunUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(requestBody),
    );

    // 8. Gestion de la réponse
    if (response.statusCode == 200) {
      debugPrint(
          'FCM: Token successfully sent to Cloud Run. Response: ${response.body}');
    } else {
      debugPrint(
          'FCM: Failed to send token to Cloud Run. Status: ${response.statusCode}, Body: ${response.body}');
    }

    // --- FIN DE LA MODIFICATION MAJEURE ---
  } catch (e) {
    debugPrint('FCM: Error in manageFcmTokenAndDeviceUuid Custom Action: $e');
  }
}
