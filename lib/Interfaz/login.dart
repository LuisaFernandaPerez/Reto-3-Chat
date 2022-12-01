import 'package:flutter/material.dart';
import 'package:flutter_application_1/Proceso/autenticacion.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login / Registro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  image: NetworkImage(
                      "https://as2.ftcdn.net/v2/jpg/02/29/28/79/1000_F_229287966_l2ZZqlpx5RZlcW91eMGRBYq3ooqRX6W9.jpg")),
            ),
            TextField(
                controller: email, 
                decoration: InputDecoration(
                    hintText: "Email", suffixIcon: Icon(Icons.email))),
            TextField(
                obscureText: true,
                controller: password, 
                decoration: InputDecoration(
                    hintText: "Password", suffixIcon: Icon(Icons.key))),
            Divider(),
            ElevatedButton.icon(
                onPressed: (){
                  Autenticacion().IniciarSesion(
                      email: email.text, password: password.text);
              }, 
              icon: Icon(Icons.login), 
              label: Text("Iniciar Sesion")),
            Divider(),
            ElevatedButton.icon(
                onPressed: (){
                  Autenticacion().CrearUsuario(
                      email: email.text, password: password.text);
              }, 
              icon: Icon(Icons.person_add), 
              label: Text("Registrar Usuarios"))
          ],
        ),
      ),    
    );
  }
}