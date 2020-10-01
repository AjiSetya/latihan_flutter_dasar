
import 'package:flutter/material.dart';
import 'package:latihan_layout/beauty_textfied.dart';

class Login2 extends StatelessWidget {

  TextStyle style = TextStyle(fontFamily: 'Monserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final usernameField = BeautyTextfield(
      margin: EdgeInsets.all(0),
      width: MediaQuery.of(context).size.width,
      height: 60,
      duration: Duration(milliseconds: 300),
      inputType: TextInputType.text,
      prefixIcon: Icon(Icons.account_circle),
      placeholder: "Username",
    );


    final passField = BeautyTextfield(
      // obscureText: true,
      margin: EdgeInsets.all(0),
      width: MediaQuery.of(context).size.width,
      height: 60,
      duration: Duration(milliseconds: 300),
      inputType: TextInputType.text,
      prefixIcon: Icon(Icons.lock),
      placeholder: "Password",
    );

    final loginButon = Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.teal,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Login 2 By Hilmi"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
      child: Container(
        height: 450.0,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    "Welcome to Login 2",
                    style: TextStyle(
                      fontSize: 24.0
                    ),
                  ),
                ),
                SizedBox(height: 45.0,),
                usernameField,
                SizedBox(height: 24.0,),
                passField,
                SizedBox(height: 14.0,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Lupa password ?",
                    style: TextStyle(
                      fontSize: 14.0
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                loginButon
              ],
            ),
          ),
      ),
    ),
    );
  }
}