import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Log_sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Log_sign_up(),
    ),
  );
}
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       SizedBox(
//         height: 300,
//         child: AnimatedSplashScreen(
//         splash: Image.asset('assets/one.png'),
//         backgroundColor: Colors.teal.shade800,
//         splashIconSize: 250,
//         nextScreen: const Log_sign_up(),
//         duration: 3000,
//         splashTransition: SplashTransition.sizeTransition,
//         pageTransitionType: PageTransitionType.topToBottom,
//             ),
//       );
//   }
// }

// Future<void> initializeFirebase() async {
//   try {
//     // Check if Firebase is already initialized
//     if (Firebase.apps.isEmpty) {
//       await Firebase.initializeApp();
//       print('Firebase initialized successfully!');
//     }
//   } catch (e) {
//     print('Error initializing Firebase: $e');
//     // Handle the initialization error as needed
//
// }}
