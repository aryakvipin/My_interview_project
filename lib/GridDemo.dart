import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class GridConstruct extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> GridConstructState();


}

class GridConstructState extends State {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Grid Demo"),
     ),
body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
children: [
  Card(child: Column(
    children:const [
      Image(image: AssetImage('assets/images/Color.png') ,height: 250,width: 150,),
      Text("Flutter"),
    ],
  )),
  Card(child: Image(image: AssetImage('assets/images/Color.png'))),
  Card(child: Image(image: AssetImage('assets/images/Color.png'))),
  Card(child: Image(image: AssetImage('assets/images/Color.png'))),
  Card(child: Image(image: AssetImage('assets/images/Color.png'))),
  Card(child: Image(image: AssetImage('assets/images/Color.png'))),
  Card(child: Image(image: AssetImage('assets/images/Color.png'))),
  Card(child: Image(image: AssetImage('assets/images/Color.png'))),


  ],
),
   );
  }
}