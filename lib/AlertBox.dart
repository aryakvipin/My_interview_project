import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main(){
  runApp(MaterialApp(  debugShowCheckedModeBanner: false,
      home: MyAlert()));
}

class MyAlert extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(title: Text("My alert login"),
     actions: [
       PopupMenuButton(itemBuilder: (context){
     return[
       PopupMenuItem(child:ListTile(leading: Icon(Icons.copy),title:Text("Copy"))),
       PopupMenuItem(child:ListTile(leading: Icon(Icons.paste),title:Text("Paste"))),
       PopupMenuItem(child:ListTile(leading: Icon(Icons.cut),title:Text("Cut"))),
       PopupMenuItem(child:ListTile(leading: Icon(Icons.help),title:Text("Help"))),
       PopupMenuItem(child:ListTile(leading: Icon(Icons.exit_to_app),title:Text("Exit"))),
     ];

    }),




     ],) ,

     body: Center(
       child: ElevatedButton(
        child: Text("show alert"),
         onPressed: () { Alert(
             context: context,
             title: "LOGIN",
             content: Column(
               children: <Widget>[
                 TextField(
                   decoration: InputDecoration(
                     icon: Icon(Icons.account_circle),
                     labelText: 'Username',
                   ),
                 ),
                 TextField(
                   obscureText: true,
                   decoration: InputDecoration(
                     icon: Icon(Icons.lock),
                     labelText: 'Password',
                   ),
                 ),
               ],
             ),
             buttons: [
               DialogButton(
                 onPressed: () => Navigator.pop(context),
                 child: Text(
                   "LOGIN",
                   style: TextStyle(color: Colors.white, fontSize: 20),
                 ),
               )
             ]).show(); },
       ),
     ),
   );
  }
}
