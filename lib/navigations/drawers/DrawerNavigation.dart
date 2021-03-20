
import 'package:flutter/material.dart';

class DrawarItemList {
  String title ;
  DrawarItemList({this.title});
}

class DrawerNavigation extends StatelessWidget{
  List<DrawarItemList> menus = [
    new DrawarItemList(
      title: "Home",
    ),
    new DrawarItemList(
      title: "About",
    ),
    new DrawarItemList(
      title: "Logout",
    )
  ] ;

  List<Widget> widgetListItem(BuildContext context){
    List<Widget> widgetItemMenus = new List();
    widgetItemMenus.add(DrawerHeader(
      child: Text('Management Ruang Rapat'),
    ));

    for(DrawarItemList item in this.menus){
      widgetItemMenus.add(ListTile(
        title: Text(item.title),
      ));
    }

    return widgetItemMenus ;
  }

  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: this.widgetListItem(context),
      ),
    );
  }

}