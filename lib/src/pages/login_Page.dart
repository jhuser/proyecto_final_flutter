import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_Page.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return IconButton(
        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
        icon: FaIcon(FontAwesomeIcons.gamepad),
        onPressed: () {
          print("Pressed");
        });
  }
}

class LoginPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Widget CreateEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 40, right: 40),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Correo electronico'),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget CreatePasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 40, right: 40),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Contraseña'),
        obscureText: true,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget CreateLoginButton(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 32, left: 40, right: 40),
        child: ElevatedButton(
            child: Text("Iniciar"),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new CardPage()));
            }));
  }

  // ignore: non_constant_identifier_names
  Widget CreateAccountLink() {
    return Container(
        padding: EdgeInsets.only(top: 25, right: 40),
        child: Text(
          'o crea tu cuenta aqui!',
          textAlign: TextAlign.right,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }

  // ignore: non_constant_identifier_names
  Widget Divisor() {
    return Container(
        padding: const EdgeInsets.only(top: 32, left: 40, right: 40),
        child: Row(children: [
          Expanded(child: Divider(height: 1)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text('O'),
          ),
          Expanded(child: Divider(height: 1)),
        ]));
  }

  // ignore: non_constant_identifier_names
  Widget FacebookButton() {
    return Container(
        padding: const EdgeInsets.only(top: 32, left: 40, right: 40),
        child: ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.facebook),
              Expanded(
                child: Text(
                  'Entrar con Facebook',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          onPressed: () {},
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset(
              'assets/images/user.png',
              height: 250,
            ),
          ),
          CreateEmailInput(),
          CreatePasswordInput(),
          CreateLoginButton(context),
          CreateAccountLink(),
          Divisor(),
          FacebookButton()
        ]),
      ),
    );
  }
}
