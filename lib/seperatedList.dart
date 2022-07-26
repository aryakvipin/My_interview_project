import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeperateList extends StatefulWidget {
  SeperateList({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SeperateList> {
  List<String> images = [
    "assets/images/Color.png",
    "assets/images/fb2.png",
    "assets/images/google.png",
    "assets/images/insta.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter ListView"),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext, index){
            return ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
              title: Text("This is title"),
              subtitle: Text("This is subtitle"),
            );
          },
          separatorBuilder: (BuildContext,index)
          {
            return Divider(height: 1);
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        )
    );
  }
}