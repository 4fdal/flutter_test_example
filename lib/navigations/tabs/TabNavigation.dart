import 'package:app_mrapat/navigations/drawers/DrawerNavigation.dart';
import 'package:app_mrapat/resouce/screens/home/HomeScreen.dart';
import 'package:flutter/material.dart';

class TabsItemList{
  final String title ;
  final String keyName ;
  TabsItemList({ this.title, this.keyName});
}

class TabNavigation extends StatefulWidget{
  TabNavigation({ Key key }) : super(key:key);

  State<StatefulWidget> createState(){
    return StateTabNavigation();
  }
}

class StateTabNavigation extends State<TabNavigation>{
  StateTabNavigation({ Key key });

  TabController tabController ;

  List<TabsItemList> tabMenus = <TabsItemList>[
    new TabsItemList(
      title: "Home",
      keyName: "home",
    ),
    new TabsItemList(
      title: "Rapat",
      keyName: "metting",
    ),
    new TabsItemList(
      title: "Profile",
      keyName: "profile",
    ),
  ];

  void initState(){
    super.initState();
  }

  int statusView = 0 ;

  Widget itemContent(BuildContext context, int indexItem){
    TabsItemList item = this.tabMenus[indexItem];
    Widget screen = null ;
    switch(item.keyName){
      case 'home' :

        Widget widget1 = Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Widget1'),
              onPressed: (){
                setState(() {
                  this.statusView = 1 ;
                });
              },
            )
          ],
        );

        Widget widget2 = Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Widget2'),
              onPressed: (){
                setState(() {

                });
              },
            )
          ],
        );

        screen = Navigator(
          onGenerateRoute: (routeSettings) {

            print(routeSettings);

            return MaterialPageRoute(
              builder: (context) => (<Widget>[widget1, widget2])[this.statusView],
            );
          },
        );
        break;
      case 'metting' :
        screen = Text(item.title);
        break;
      case 'profile' :
        screen = Text(item.title);
        break;
    }
    return screen;
  }

  List<Widget> tabContents(BuildContext context){
    int indexItem = 0 ;
    return this.tabMenus.map((TabsItemList item){
      return Container(
        margin: EdgeInsets.all(10),
        child: this.itemContent(context, indexItem++)
      );
    }).toList();
  }

  Function builderTabController(BuildContext buildContext){
    return (BuildContext context){
      return Scaffold(
        appBar : AppBar(
          title: Text('MRAPAT'),
          bottom: TabBar(
            tabs: this.tabMenus.map((TabsItemList item){
              return Tab(
                text: item.title,
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          controller: this.tabController,
          children: this.tabContents(context),
        ),
//        drawer: DrawerNavigation(),
      );
    };
  }

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: this.tabMenus.length,
      child: Builder(builder: this.builderTabController(context)),
    );
  }
}