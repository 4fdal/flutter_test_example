
import 'file:///G:/KULIAH%20D4%20RPL/SEMESTER%202/PROJECT%20MOBILE%203/app_mrapat/app_mrapat/lib/navigations/drawers/DrawerNavigation.dart';
import 'package:app_mrapat/navigations/tabs/TabNavigation.dart';
import 'package:flutter/material.dart';

class HomeScreenOther extends StatefulWidget{
  HomeScreenOther({ Key key }) : super(key:key);

  State<StatefulWidget> createState(){
    return StateHomeScreenOther();
  }
}

class StateHomeScreenOther extends State<HomeScreenOther>{

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Container(
        child: Text('Hello Home'),
      )
    );
  }
}

class HomeScreen extends StatefulWidget{
  HomeScreen({ Key key }) : super(key:key);

  State<StatefulWidget> createState(){
    return StateHomeScreen();
  }
}

class StateHomeScreen extends State<HomeScreen>{

  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          Text('Hello World'),
          RaisedButton(
            child: Text('Hello'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeScreenOther(),
              ));
            },
          )
        ],
      ),
    );
  }
}

