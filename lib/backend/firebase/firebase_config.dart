import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCbRscvsw2FwgzdShLytikbb7Sw51ioLs4",
            authDomain: "laundrymanagementsystem-609a2.firebaseapp.com",
            projectId: "laundrymanagementsystem-609a2",
            storageBucket: "laundrymanagementsystem-609a2.firebasestorage.app",
            messagingSenderId: "614368527448",
            appId: "1:614368527448:web:1c59583754b6a47c3a762d",
            measurementId: "G-GYJKLMT5Q7"));
  } else {
    await Firebase.initializeApp();
  }
}
