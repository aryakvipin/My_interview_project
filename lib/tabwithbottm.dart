import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CallList.dart';
import 'GridDemo.dart';
import 'LoginValidation.dart';
void main() {
  runApp(MaterialApp(home: BottemNavBar()));
}

class BottemNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottemNavBarState();
}


class BottemNavBarState extends State {
  int _selectedIndexForBottomNavigationBar = 0;
  int _selectedIndexForTabBar = 0;


  //1
  static List _listOfIconsForBottomNavigationBar = [
    Icon(Icons.call),
    Icon(Icons.camera),
    Icon(Icons.chat),
  ];


  //2
  static List _listOfIconsForTabBar = [
    Text("Incomming call"),
    callListwithBuilder(),
    Text("Missed call"),

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
    final tabBar = new TabBar(labelColor: Colors.blue,
      onTap: _onItemTappedForTabBar,
      tabs: [
        new Tab(
          text: "Incoming",

        ),
        new Tab(
          text: "Outgoing",
        ),
        new Tab(
          text: "Missed",
        ),
      ],
    );



    //6
    // ignore: unnecessary_new
    return DefaultTabController(length: 3, child:
    Scaffold(
      appBar: AppBar(bottom: tabBar,
          backgroundColor: Colors.black,
          title: Center(child: Text('Tabs Demo',style:  TextStyle(color:Colors.blue,fontSize: 20),))),

      //7
      body: Center(child: _selectedIndexForTabBar == 0 ?
      _listOfIconsForBottomNavigationBar.elementAt(
          _selectedIndexForBottomNavigationBar) :
      _listOfIconsForTabBar.elementAt(_selectedIndexForTabBar - 1)),backgroundColor: Colors.black54,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTappedForBottomNavigationBar,
        // this will be set when a new tab is tapped
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call,),label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),


        ],
        currentIndex: _selectedIndexForBottomNavigationBar,
      ),
    ));
  }
}
