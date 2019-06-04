import'package:flutter/material.dart';
import 'login_page.dart';

class SecondPage extends StatelessWidget{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Logged in successfully'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go Back to Login'),
            onPressed: (){
              Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage())
              );
            }
        ),
      ),
    );
  }
}