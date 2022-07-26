import 'package:flutter/material.dart';

import 'GridDemo.dart';
import 'Listview2.dart';
import 'LoginValidation.dart';

void main(){
  runApp(MaterialApp( theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,home: TabDemo()));
}

class TabDemo extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=>TabDemoState ();
}

class TabDemoState  extends State{
  int selected_index = 0;
  List page = const <Widget>[
    Icon(Icons.call, size: 200),
    Icon(Icons.camera, size: 200),
    Icon(Icons.chat, size: 200),
  ];

  void onItemTap(int index) {
    setState(() {
      selected_index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
      appBar: AppBar (title : const Text("Whatsapp"),
        bottom:  TabBar(tabs: [
          Text("incomming"),
          Text("outging"),
          Text("misssed"),
        ],

        ) ,

      ),
      body: Container(
        child: TabBarView(
          children: [
            Center(
                child: ElevatedButton(
                    child: Text('goto cam'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('go to cam'),
                          action: SnackBarAction(
                            label: 'Yay!!!',
                            onPressed: () {},
                          ),
                        ),
                      );
                    })),
            ListwithBuilder(),
            GridConstruct(),
            Login_Page(),
          ],

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.amberAccent,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call,),label: "call"),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),

        ],
        currentIndex: selected_index,
        onTap: onItemTap,
      ),
    )
    );

  }
}