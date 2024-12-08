import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCNe1EonAHW3fRvq1IMeEMaWcka3eBNoLs",
            authDomain: "the-s-team-sport.firebaseapp.com",
            projectId: "the-s-team-sport",
            storageBucket: "the-s-team-sport.appspot.com",
            messagingSenderId: "184746316510",
            appId: "1:184746316510:web:8350f2fe4e8951ae2b284f"));
  } else {
    await Firebase.initializeApp();
  }
}
