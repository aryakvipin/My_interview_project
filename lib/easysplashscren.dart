import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_projcet/Listview2.dart';
import 'package:my_projcet/loginpage.dart';
import 'package:my_projcet/seperatedList.dart';
import 'package:my_projcet/splshscrren.dart';

import 'ContactList.dart';
import 'CustemList.dart';
import 'GridDemo.dart';
import 'GridWithBuild.dart';
import 'Navigation.dart';
import 'firstpage.dart';

void main() {
  runApp(MaterialApp (home: SplashPage()));
}


class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
      title: Text(
        "Title",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: Loginpage(),
      durationInSeconds: 5,
    );
  }
}

