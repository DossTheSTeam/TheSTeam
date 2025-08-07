// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports requis pour cette action
import 'package:firebase_messaging/firebase_messaging.dart';

// Fonction de haut niveau pour gérer les messages d'arrière-plan.
// L'annotation @pragma est essentielle pour iOS en mode d'arrière-plan.
@pragma('vm:entry-point')
Future<void> firebaseBackgroundMessageHandler(RemoteMessage message) async {
  // Pour les applications en arrière-plan, FirebaseMessaging se charge de l'initialisation.
  // Le simple fait que cette fonction soit appelée confirme la réception.
  debugPrint("MAIN.DART: Handling a background message: ${message.messageId}");
}

Future<void> registerBackgroundHandler() async {
  // Enregistre le gestionnaire de messages d'arrière-plan.
  // Cet appel doit être fait au début du main() pour fonctionner sur iOS.
  FirebaseMessaging.onBackgroundMessage(firebaseBackgroundMessageHandler);
  debugPrint(
      'FirebaseMessaging.onBackgroundMessage handler registered in main().');
}
