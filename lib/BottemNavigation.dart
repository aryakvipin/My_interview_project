import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: BottemNavBar()));
}

class BottemNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottemNavBarState();
}

class BottemNavBarState extends State {
  int selected_index = 0;
  List page = const <Widget>[
    Icon(Icons.home, size: 200),
    Icon(Icons.settings, size: 200),
    Icon(Icons.chat, size: 200),
    Icon(Icons.call, size: 200),
  ];

  void onItemTap(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottem Bar"),
      ),
      body: Center(
        child: page.elementAt(selected_index),
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.amberAccent,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Call"),
        ],
        currentIndex: selected_index,
        onTap: onItemTap,
      ),
    );
  }
}
