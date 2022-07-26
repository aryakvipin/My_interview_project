import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      // appBar: AppBar(
      //   title: Text('GeeksforGeeks'),
      //   backgroundColor: Colors.greenAccent[400],
      // ), //AppBar
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/blurbg.jpg"),
                fit: BoxFit.cover
            )),

          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.antiAliasWithSaveLayer,

            children: <Widget>[
              Positioned(
                top: 10,
                left: 180,

                child: Container(

                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.topRight,
                  child: const Text(
                    'Welcome',
                    style: TextStyle(color: Colors.white,fontSize: 25,  fontWeight: FontWeight.w500, ),),
                  //Text
                ),
              ),
              Positioned(
                top: 40,
                left: 90,

                child: Container(

                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.center,
                  child: const Text(
                    "Welcome to this awesome login app. \n You are awesome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),textAlign: TextAlign.center,),
                  //Text
                ),
              ),
              Positioned(
                top: 500,
                left: 30,
                child: Container(
                  child: SizedBox(width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text("Log in",style: TextStyle(color: Colors.white),),
                      onPressed: () {},
                    ),
                  ),

                ),
                ),
               //Container
              Positioned(
                left: 250,
                top: 500,
                child: Container(width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Text("Sign Up",style: TextStyle(color: Colors.white),),
                    onPressed: () {},
                  ),

                ),
              ),
              Positioned(
                left: 145,
                top: 550,
                child: Container(width: 200,
                  child:  OutlinedButton.icon(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.google),
                    label: const Text(
                      "Continue with Google",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.red),
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),

                ),
              ), //Container
            ], //<Widget>[]
          ), //Center
        ),
      ), //SizedBox
    ), //Center
  ) //Scaffold
      ); //MaterialApp
}
