import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBNzFXV0vC29VILijUfL7CSTbEsqH3cJvI",
            authDomain: "urbanstreet-31800.firebaseapp.com",
            projectId: "urbanstreet-31800",
            storageBucket: "urbanstreet-31800.appspot.com",
            messagingSenderId: "49066202949",
            appId: "1:49066202949:web:52e29d63d7f7c871da102c",
            measurementId: "G-Q3Q5NWWCJ0"));
  } else {
    await Firebase.initializeApp();
  }
}
