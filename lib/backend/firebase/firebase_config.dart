import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyARrGx7wbz8ZPPIxmG8hoMcLCwtjdzjr8w",
            authDomain: "caj-laundry-management-49191.firebaseapp.com",
            projectId: "caj-laundry-management-49191",
            storageBucket: "caj-laundry-management-49191.firebasestorage.app",
            messagingSenderId: "82008219104",
            appId: "1:82008219104:web:96ae4d2453248270899f85",
            measurementId: "G-HD7R1PKYLK"));
  } else {
    await Firebase.initializeApp();
  }
}
