import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Interfaz/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBbE5gbY-JlQPEFVdM5DtTcf8LZwMfXR3s",
          authDomain: "reto-3-chat-e4dd5.firebaseapp.com",
          projectId: "reto-3-chat-e4dd5",
          storageBucket: "reto-3-chat-e4dd5.appspot.com",
          messagingSenderId: "556138408666",
          appId: "1:556138408666:web:9438b5e5c21a25071b93e3",
          measurementId: "G-G9XL399KHT"));
  runApp(const MyApp());
}
