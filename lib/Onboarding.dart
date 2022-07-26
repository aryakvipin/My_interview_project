import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
import 'package:my_projcet/RegistretionPage.dart';

void main(){
  runApp(MaterialApp(home: TestScreen()));
}
class TestScreen extends StatelessWidget {
  /*here we have a list of OnbordingScreen which we want to have, each OnbordingScreen have a imagePath,title and an desc.
      */
  final List<OnbordingData> list = [
    OnbordingData(
      image: AssetImage("images/img1.png"),
      titleText:Text("This is Title1"),
      descText: Text("This is desc1"),
    ),
    OnbordingData(
      image: AssetImage("images/img2.png"),
      titleText:Text("This is Title2"),
      descText: Text("This is desc2"),
    ),
    OnbordingData(
      image: AssetImage("images/img3.png"),
      titleText:Text("This is Title3"),
      descText: Text("This is desc4"),
    ),
    OnbordingData(
      image: AssetImage("images/img1.png"),
      titleText:Text("This is Title4"),
      descText: Text("This is desc4"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    /* remove the back button in the AppBar is to set automaticallyImplyLeading to false
  here we need to pass the list and the route for the next page to be opened after this. */
    return IntroScreen(
      onbordingDataList: list,
      colors: [
        //list of colors for per pages
        Colors.white,
        Colors.red,
      ],
      pageRoute: MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
      nextButton: Text(
        "NEXT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      lastButton: Text(
        "GOT IT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      skipButton: Text(
        "SKIP",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      selectedDotColor: Colors.orange,
      unSelectdDotColor: Colors.grey,
    );
  }
}