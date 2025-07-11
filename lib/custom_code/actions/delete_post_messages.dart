// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> deletePostMessages(DocumentReference? postRef) async {
  // Vérifie si la référence du post est valide.
  // C'est une bonne pratique pour éviter les erreurs nulles.
  if (postRef == null) {
    print(
        'Erreur: La référence du post est nulle. Impossible de supprimer les messages.');
    return; // Sort de la fonction si postRef est null.
  }

  try {
    // 1. Récupération de la sous-collection 'post_messages'
    // On accède à la sous-collection 'post_messages' du document 'postRef'.
    final CollectionReference postMessagesRef =
        postRef.collection('post_messages');

    // 2. Récupération de tous les documents (commentaires) de cette sous-collection
    // On obtient un snapshot (instantané) de tous les documents de la sous-collection.
    // L'ajout de .limit(500) est une mesure de sécurité pour éviter de lire un nombre astronomique
    // de documents d'un coup, ce qui pourrait impacter les performances et les coûts.
    // Si un post a plus de 500 messages, cette méthode nécessiterait une pagination ou une Cloud Function.
    final QuerySnapshot querySnapshot = await postMessagesRef.limit(500).get();

    // 3. Suppression de chaque document de la sous-collection
    // Utilisation de WriteBatch pour des suppressions atomiques et optimisées.
    // Un WriteBatch permet de regrouper plusieurs opérations d'écriture
    // (création, mise à jour, suppression) en une seule opération atomique.
    // C'est plus performant et garantit que toutes les opérations réussissent ou échouent ensemble.
    final WriteBatch batch = FirebaseFirestore.instance.batch();

    // Parcourt chaque document trouvé dans le snapshot.
    for (DocumentSnapshot doc in querySnapshot.docs) {
      // Ajoute l'opération de suppression de chaque document au batch.
      batch.delete(doc.reference);
    }

    // 4. Exécution du batch
    // Applique toutes les suppressions définies dans le batch.
    await batch.commit();

    print(
        'Tous les messages de la sous-collection ont été supprimés avec succès pour le post: ${postRef.id}');
  } catch (e) {
    // Gestion des erreurs : affiche un message en cas de problème.
    print('Erreur lors de la suppression des messages: $e');
    // En production, il serait judicieux de loguer cette erreur dans un service de monitoring.
  }
}
