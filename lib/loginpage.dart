import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Reg.dart';
import 'RegistretionPage.dart';
void main(){
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
  //   SystemUiOverlay.bottom
  // ]);
  runApp(MaterialApp(home: Loginpage(),
  routes: {
    'homepage':(BuildContext ct)=> const HomePage(),
  'register':(BuildContext ct)=> RegisterScreen(),
  }

));
}
class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Padding(padding: EdgeInsets.only(top: 30)),
          Center(
            child: Text(
              "Flutter Login",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 100,right: 100,top: 50),
            child: TextField(

              decoration:InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                hintText: "Email",

              ) ,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100,right: 100,top: 30),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",

              decoration:InputDecoration(
                  border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),


                hintText: "password",

              ) ,
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top :20),
            child: SizedBox(width: 200,height: 50,
    child: ElevatedButton(onPressed: (){
      Navigator.of(context).pushNamed('homepage');
    }, child: const Text("Login",
    style: TextStyle(fontSize: 25
    ),),
    )
            ),
          ),

          SizedBox(height: 200,
            child: TextButton
              (onPressed: (

                ){
              Navigator.of(context).pushNamed('register');
            }, child: Text("Not a user ? Register Here")),
          )
        ],
      ),
    );
  }
}
