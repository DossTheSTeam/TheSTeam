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
import 'package:cloud_functions/cloud_functions.dart'; // L'importation n'est plus nécessaire mais peut être conservée
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http; // Importation du package http
import 'dart:convert'; // Nécessaire pour encoder le JSON

/// Initialise les écouteurs FCM pour le rafraîchissement du token.
Future<void> listenForTokenRefreshAndUpload(String userId) async {
  debugPrint('listenForTokenRefreshAndUpload: Début de l\'action.');

  final prefs = await SharedPreferences.getInstance();
  String? deviceUuid = prefs.getString('device_uuid');

  if (deviceUuid == null) {
    debugPrint(
        'listenForTokenRefreshAndUpload: ERREUR CRITIQUE - UUID de l\'appareil introuvable.');
    return;
  } else {
    debugPrint(
        'listenForTokenRefreshAndUpload: UUID existant récupéré localement pour le listener: $deviceUuid');
  }

  String platform;
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    platform = 'ios';
  } else if (defaultTargetPlatform == TargetPlatform.android) {
    platform = 'android';
  } else {
    platform = 'unknown';
  }

  // Écoute les rafraîchissements du token FCM
  FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
    debugPrint(
        'listenForTokenRefreshAndUpload: Token FCM rafraîchi: $newToken');

    // --- DÉBUT DE LA MODIFICATION ---
    // Remplacement de l'appel Cloud Function par une requête HTTP POST vers Cloud Run

    // URL du point de terminaison Cloud Run
    const String cloudRunUrl =
        'https://addfcmtoken-184746316510.europe-west9.run.app';

    // Création du corps de la requête JSON
    final Map<String, dynamic> requestBody = {
      'userId': userId,
      'tokenId': deviceUuid,
      'fcmToken': newToken,
      'platform': platform,
    };

    // Envoi de la requête HTTP POST
    try {
      final response = await http.post(
        Uri.parse(cloudRunUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        debugPrint(
            'listenForTokenRefreshAndUpload: Token de rafraîchissement envoyé à Cloud Run avec succès. Response: ${response.body}');
      } else {
        debugPrint(
            'listenForTokenRefreshAndUpload: Échec de l\'envoi du token de rafraîchissement. Status: ${response.statusCode}, Body: ${response.body}');
      }
    } catch (e) {
      debugPrint(
          'listenForTokenRefreshAndUpload: Erreur lors de l\'appel HTTP pour le rafraîchissement du token: $e');
    }
    // --- FIN DE LA MODIFICATION ---
  });

  debugPrint(
      'listenForTokenRefreshAndUpload: Listener de rafraîchissement du token FCM activé.');
}
