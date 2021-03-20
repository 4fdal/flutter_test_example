import 'dart:ffi';

import 'package:app_mrapat/navigations/tabs/TabNavigation.dart';
import 'package:app_mrapat/resouce/screens/auth/ForgetPasswordScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StateLoginScreen();
  }
}

class StateLoginScreen extends State<LoginScreen>{

  Function onPressTextForgetPassword(context){
    return (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ForgetPasswordScreen(),
        ),
      );
    };
  }

  Function onPressButtonLogin(context){
    return (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TabNavigation(),
        ),
      );
    };
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10
          ),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                          'Login Pegawai',
                          style: TextStyle(
                            fontSize: 24,
                          )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        left: 5,
                        right: 5,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Nip Pegawai",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 5,
                        right: 5,
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top : 5,
                        left: 8,
                      ),
                      child: GestureDetector(
                        child: Text('Lupa Password?', style: TextStyle(
                            color: Colors.blue
                        )),
                        onTap : this.onPressTextForgetPassword(context),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top : 10,
                        bottom: 20,
                        left: 8,
                        right: 8,
                      ),
                      width: double.infinity,
                      child : RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        color: Colors.lightBlueAccent,
                        textColor: Colors.white,
                        child: const Text('Masuk'),
                        onPressed: this.onPressButtonLogin(context),
                      ),
                    ),
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}



