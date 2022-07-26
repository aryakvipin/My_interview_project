import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Googlefont ()));
}

class Googlefont extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Center(
      child: Column(
        children: [
          Text("My Google Font Demo",style:GoogleFonts.abrilFatface(fontSize: 30)),
          SizedBox(child: const Text("My custem font Demo",style:TextStyle(fontFamily: 'Roboto-Italic'),
          )),
        ],


          ),
  ),


);
  }
}