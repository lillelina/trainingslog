import 'package:flutter/material.dart';
import 'login_page.dart';
import 'Second_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  //This widget is root of the application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(title: 'Flutter Login'),
    );
  }
}

