import 'package:flutter/material.dart';
import 'package:proyecto_final_flutter/src/pages/login_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inico de Sesion',
      theme: ThemeData(
          dividerColor: Colors.grey,
          buttonTheme: ButtonThemeData(height: 50),
          buttonColor: Colors.cyan),
      home: LoginPage(),
    );
  }
}
