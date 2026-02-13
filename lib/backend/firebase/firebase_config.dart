import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDOcQa3lv6_qBSlVlGf3o-jOWElx0ax0R0",
            authDomain: "caj-laundry-management-49191.firebaseapp.com",
            projectId: "caj-laundry-management-49191",
            storageBucket: "caj-laundry-management-49191.firebasestorage.app",
            messagingSenderId: "82008219104",
            appId: "1:82008219104:web:91a3f0bf59c40d0a899f85",
            measurementId: "G-23DBSESRYF"));
  } else {
    await Firebase.initializeApp();
  }
}
