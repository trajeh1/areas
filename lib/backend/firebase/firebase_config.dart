import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDBo2x2k93wJmF9u6maBsrnR4Y2wQlndas",
            authDomain: "protectedarea-cf68e.firebaseapp.com",
            projectId: "protectedarea-cf68e",
            storageBucket: "protectedarea-cf68e.appspot.com",
            messagingSenderId: "135293691515",
            appId: "1:135293691515:web:f8e50e7824654e49c4e4de"));
  } else {
    await Firebase.initializeApp();
  }
}
