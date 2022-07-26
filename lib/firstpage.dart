import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("flutter"),
     ),
     body: ListView(
       children:  const
       [
         Padding(
           padding: EdgeInsets.only(top: 20),
           child: Center(
             child: Text("List Of elements"
             ),
           ),
         ),
         Card(color:Colors.black12,
           child: ListTile
             (
             leading: Icon(Icons.star),
             title: Text("Apple"),
           ),
         ),
         Card(
           child: ListTile(
             leading: Icon(Icons.star),
             title: Text("Banana"),
             trailing: Icon(Icons.arrow_circle_down_rounded),
           ),
         ),
         ListTile(
           leading: Icon(Icons.star),
           title: Text("Manago"),
         ),
         ListTile(
           leading: Icon(Icons.star),
           title: Text("Garpes"),
         ),
         ListTile(
           leading: Icon(Icons.star),
           title: Text("Kivi"),
         ),
         ListTile(
           leading: Icon(Icons.star),
           title: Text("Orange"),
         ),
       ],
     ),
   );

  }

}