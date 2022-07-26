import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BlogHome.dart';

void main() {
  runApp(MaterialApp
    ( debugShowCheckedModeBanner: false,home: BottemNavBar()));
}

class BottemNavBar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => BottemNavBarState();
}


class BottemNavBarState extends State {
  List<Color> colors = [
    Colors.blueGrey,
    Colors.green,
    Colors.deepOrange,
    Colors.purple
  ];
  int _selectedIndexForBottomNavigationBar = 0;
  int _selectedIndexForTabBar = 0;


  //1
  static List _listOfIconsForBottomNavigationBar = [

    BlogtList(),
    BlogtList(),
    BlogtList(),
    BlogtList(),
  ];


  //2
  static List _listOfIconsForTabBar = [
    BlogtList(),
    BlogtList(),
    BlogtList(),
    BlogtList(),



  ];
  // static List _listOfIchatForTabBar = [
  //   Icon(Icons.directions_boat),
  //   Icon(Icons.directions_bus),
  //   Icon(Icons.directions_railway),
  // ];


  //3
  void _onItemTappedForBottomNavigationBar(int index) {
    setState(() {
      _selectedIndexForBottomNavigationBar = index;
      _selectedIndexForTabBar = 0;
    });
  }


  //4
  void _onItemTappedForTabBar(int index) {
    setState(() {
      _selectedIndexForTabBar = index + 1;
      _selectedIndexForBottomNavigationBar = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //5
    final tabBar = new TabBar(labelColor: Colors.redAccent,
      onTap: _onItemTappedForTabBar,
      indicatorColor: Colors.redAccent,
      unselectedLabelColor: Colors.black,
      tabs: [
        new Tab(
          text: "for you",

        ),
        new Tab(
          text: "Design",
        ),
        new Tab(
          text: "Beauty",
        ),
        new Tab(
          text: "Education",
        ),
      ],
    );



    //6
    // ignore: unnecessary_new
    return DefaultTabController(length: 4, child:
    Scaffold(
      appBar: AppBar(
          bottom: tabBar,
          backgroundColor: Colors.white60,

        title: Center(child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
        //centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.black,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_rounded,color: Colors.black,),
            onPressed: () {},
          )
        ],
        //backgroundColor: Colors.purple,

          ),


      //7
      body:

      Center(child: _selectedIndexForTabBar == 0 ?

      _listOfIconsForBottomNavigationBar.elementAt(
          _selectedIndexForBottomNavigationBar) :
      _listOfIconsForTabBar.elementAt(_selectedIndexForTabBar - 1),


      ),backgroundColor: Colors.white,

      bottomNavigationBar:

      BottomNavigationBar(
        backgroundColor: Colors.white60,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.redAccent,
        showSelectedLabels: false,   // <-- HERE
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTappedForBottomNavigationBar,
        // this will be set when a new tab is tapped
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon:FaIcon(FontAwesomeIcons.folder),label: "file"),
          BottomNavigationBarItem(icon:FaIcon(FontAwesomeIcons.heart),label: "faverote"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "person"),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "setting"),

        ],
        currentIndex: _selectedIndexForBottomNavigationBar,
      ),
    ));
  }
}
