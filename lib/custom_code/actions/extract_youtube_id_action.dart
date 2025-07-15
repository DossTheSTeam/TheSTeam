// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> extractYoutubeIdAction(String? urlEntry) async {
  // Add your function code here!
  if (urlEntry == null || urlEntry.isEmpty) {
    print(
        'extractYoutubeIdAction: urlEntry est vide ou null.'); // Pour le débogage
    return null;
  }

  // Tente d'extraire l'ID du format youtu.be/ID3
  // où l'ID est la partie numérique après le dernier '/'
  RegExp regExpGoogleContent = RegExp(r'\/([0-9A-Za-z_-]{11})$');
  Match? matchGoogleContent = regExpGoogleContent.firstMatch(urlEntry);

  if (matchGoogleContent != null && matchGoogleContent.groupCount >= 1) {
    print(
        'extractYoutubeIdAction: ID extrait du format googleusercontent: ${matchGoogleContent.group(1)}'); // Débogage
    return matchGoogleContent.group(1);
  }

  // Tente d'extraire l'ID des URLs YouTube standards (ex: https://www.youtube.com/watch?v=VIDEO_ID, https://youtu.be/VIDEO_ID, https://www.youtube.com/embed/VIDEO_ID)
  RegExp standardYoutubeRegExp = RegExp(
    r'(?:youtube\.com\/(?:[^\/]+\/.+\/|(?:v|e(?:mbed)?)\/|.*[?&]v=)|youtu\.be\/)([^"&?\/\s]{11})',
    caseSensitive: false,
    multiLine: false,
  );
  Match? matchStandardYoutube = standardYoutubeRegExp.firstMatch(urlEntry);

  if (matchStandardYoutube != null && matchStandardYoutube.groupCount >= 1) {
    print(
        'extractYoutubeIdAction: ID extrait du format standard YouTube: ${matchStandardYoutube.group(1)}'); // Débogage
    return matchStandardYoutube.group(1);
  }

  print(
      'extractYoutubeIdAction: Aucun ID valide trouvé pour l\'URL: $urlEntry'); // Débogage
  return null;
}
