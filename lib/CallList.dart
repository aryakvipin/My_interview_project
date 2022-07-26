import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: callListwithBuilder()));
}
class callListwithBuilder extends StatelessWidget{
  // List images=[
  //
  //   'assets/images/Color.png',
  //   'assets/images/ins.png',
  //   'assets/images/google.png'
  //
  // ];
  // List name=[
  //   'aray',
  //   'ammu',
  //   'rithu',
  //   'vipin',
  //
  // ];
  List  prducts=List.generate(50, (index) => "call $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(color:Colors.black54,
        child: ListView.builder(itemBuilder: (BuildContext ,index){
          return ListTile(

            title: Text(prducts[index]),

          );

        },

          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }

}