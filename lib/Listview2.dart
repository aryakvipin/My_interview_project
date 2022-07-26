import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListwithBuilder extends StatelessWidget{
  List images=[

    'assets/images/Color.png',
    'assets/images/ins.png',
    'assets/images/google.png'

  ];
  List name=[
    'aray',
    'ammu',
    'rithu',
        'vipin',

  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    title: Text("List.Bulider"),
  ),
    body: ListView.builder(itemBuilder: (BuildContext ,index){
   return Card(
     child: ListTile(
       leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
       title: Text(name[index]),

     ),
   );

    },
      itemCount: images.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
    ),
  );
  }

}