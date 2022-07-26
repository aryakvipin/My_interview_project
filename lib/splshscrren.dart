import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_projcet/firstpage.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(home: Splashcreenone()));
}

class Splashcreenone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashscreenoneState();
}

class SplashscreenoneState extends State {
  // @override
  // void initState() {
  //   Timer(Duration(seconds: 5),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage())));
  // }
  @override
  Widget build(BuildContext context) {
    // return SplashScreen(
    //     seconds: 14,
    //     navigateAfterSeconds: HomePage(),
    //     title: new Text('Welcome In SplashScreen'),
    //     backgroundColor: Colors.white,
    //     image: Image.asset("assets/images/Color.png"),
    //     styleTextUnderTheLoader: new TextStyle(),
    //     photoSize: 100.0,
    //     loaderColor: Colors.red
    // );
    return AnimatedSplashScreen(
      splash: 'assets/images/Color.png',
      nextScreen: HomePage(),
      splashTransition: SplashTransition.rotationTransition,

    );
  }
}

// class Splashcreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//           image: NetworkImage(
//               "https://cdn.pixabay.com/photo/2013/08/28/11/47/leaf-176722__340.jpg"),
//           fit: BoxFit.cover,
//         )),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Image(
//                 image: AssetImage("assets/images/Color.png"),
//                 height: 100,
//                 width: 80),
//             Text(
//               "Flutter",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 25,
//                   color: Colors.black),
//             ),
//             Icon(
//               Icons.map,
//               size: 30,
//               color: Colors.amberAccent,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
