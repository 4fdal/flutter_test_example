import 'package:app_mrapat/resouce/screens/auth/LoginScreen.dart';
import 'package:app_mrapat/resouce/screens/auth/ResetPaswordScreen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget{
  ForgetPasswordScreen({ Key key }) : super(key:key);


  State<StatefulWidget> createState(){
    return StateForgetPasswordScreen();
  }
}

class StateForgetPasswordScreen extends State<ForgetPasswordScreen>{

  Function onPressTextLoginAccount(context){
    return (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    };
  }
  
  Function onPressButtonResetPassword(context){
    return (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResetPasswordScreen(),
        ),
      );
    };
  }

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Lupa Password"),
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
                            'Lupa Password',
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Email Pegawai",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top : 5,
                          left: 8,
                        ),
                        child: GestureDetector(
                          child: Text('Login Akun?', style: TextStyle(
                              color: Colors.blue
                          )),
                          onTap: this.onPressTextLoginAccount(context),
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
                          child: const Text('Reset Password'),
                          onPressed: this.onPressButtonResetPassword(context),
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