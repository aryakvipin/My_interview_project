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
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(length: 4, child: Scaffold(
    appBar: AppBar (title : const Text("Whatsapp"),
      bottom: const TabBar(tabs: [
        Icon(Icons.camera),
        Text("Chats"),
        Text("Status"),
        Text("call"),
      ],

      ) ,

    ),
    body: TabBarView(
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
  )
  );

  }
}