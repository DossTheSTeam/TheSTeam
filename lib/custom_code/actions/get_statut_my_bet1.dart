// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool?> getStatutMyBet1(DocumentReference myBetRef) async {
  try {
    // Récupérer le document myBet et ses références de paris
    DocumentSnapshot myBetSnapshot = await myBetRef.get();

    if (!myBetSnapshot.exists) {
      print("Le document myBet n'existe pas");
      return null;
    }

    // Récupérer les références de paris (en utilisant ?? pour gérer les valeurs nulles)
    DocumentReference? bet1Ref = myBetSnapshot.get('bet1');

    // Créer une liste de références de paris non nulles
    List<DocumentReference> validBetRefs = [
      if (bet1Ref != null) bet1Ref,
    ];

    // Si aucune référence de pari valide, le statut de myBet est indéterminé
    if (validBetRefs.isEmpty) {
      print("Aucune référence de pari valide trouvée");
      return null;
    }

    // Récupérer les documents de paris correspondant aux références valides
    List<DocumentSnapshot> betSnapshots = await Future.wait(
      validBetRefs.map((betRef) => betRef.get()).toList(),
    );

    // Vérifier si tous les paris valides sont à true
    bool allBetsTrue = betSnapshots.every((betSnapshot) =>
        betSnapshot.exists && betSnapshot.get('statut') == true);

    // Mettre à jour le statut de myBet en fonction des paris valides
    await myBetRef.update({
      "statut": allBetsTrue,
    });

    return allBetsTrue;
  } catch (e) {
    print('Erreur lors de la mise à jour du statut de myBet : $e');
    return null;
  }
}
