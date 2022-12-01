import 'package:flutter/material.dart';
import 'package:flutter_application_1/Interfaz/chat.dart';
import 'package:flutter_application_1/Interfaz/login.dart';
import 'package:flutter_application_1/Proceso/autenticacion.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Autenticacion().estadoLogin, 
      builder: (context, respuesta){
        if(respuesta.hasData){
          return chat();
        } else{
          return login();
        }
      });
  }
}
