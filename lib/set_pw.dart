import 'package:flutter/material.dart';
import 'Second_page.dart';
import 'login_page.dart';


class PasswordForm extends StatefulWidget{
  PasswordForm({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PasswordFormState createState() => _PasswordFormState();
}


class _PasswordFormState extends State<PasswordForm> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final setPasswordField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Password",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
    );

    final confirmPasswordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "confirm Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );



    final submitButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage())
          );
        },
        child: Text("Submit",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );


    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                setPasswordField,
                SizedBox(height: 25.0),
                confirmPasswordField,
                SizedBox(height: 35,),
                submitButton,
                SizedBox(height: 15.0,),
              ],
            ),
          ),
        ),
      ),
    );

  }
}