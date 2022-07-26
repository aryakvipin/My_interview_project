import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'My Flutter Pad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

const kExpandedHeight = 300.0;

class _MyHomePageState extends State<MyHomePage> {
  List<int> top = <int>[];



  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //1
      body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 150,
            centerTitle: false,
            leading: Icon(Icons.menu),
            title: Padding(
              padding: EdgeInsets.only(   top:40),
              child: Center(child: Text('Type Your Location')),

            ),
            actions: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.heart),
                onPressed: () {},
              ),
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)),
                  ),
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 200.0,

            delegate: SliverChildListDelegate(
              [

                Container(
                  child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[

                    Positioned(
                      right: 40,
                      top: 50,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.orange,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.local_cafe), // icon
                            Text("Cafe"), // text
                          ],
                        ),
                      ),
                    ), //Container
                    Positioned(

                      left: 210,
                      top: 50,
                      child: Container(
                        alignment:Alignment.center ,
                        width: 100,
                        height: 100,

                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.restaurant), // icon
                            Text("Resturent"), // text
                          ],
                        ),
                      ),
                    ), //Container
                    Positioned(
                      left: 50,
                      top: 50,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.redAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.hotel), // icon
                            Text("Hotel"), // text
                          ],
                        ),
                      ),
                    ), //Container

                    //Container
                  ], //<Widget>[]
                ),),

                Container(
                  alignment: Alignment.topCenter,


                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),

                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(image: AssetImage('images/hotelbed.jpg'),height: 100,width: 400,fit: BoxFit.fill,) ,// icon
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text("",style:TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold),),
                          ),
                          Text("Boddha, kathaamndu",style:TextStyle(fontSize: 10,color: Colors.black,),),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Text("(220 reviews)",style:TextStyle(fontSize: 10,color: Colors.black,),),


                            ],
                          )// text
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,


                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),

                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(image: AssetImage('images/bd1.jpg'),height: 100,width: 400,fit: BoxFit.fill,) ,// icon
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text("",style:TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold),),
                          ),
                          Text("Boddha, kathaamndu",style:TextStyle(fontSize: 10,color: Colors.black,),),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Text("(220 reviews)",style:TextStyle(fontSize: 10,color: Colors.black,),),


                            ],
                          )// text
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,


                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),

                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(image: AssetImage('images/bd3.jpg'),height: 100,width: 400,fit: BoxFit.fill,) ,// icon
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text("",style:TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold),),
                          ),
                          Text("Boddha, kathaamndu",style:TextStyle(fontSize: 10,color: Colors.black,),),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Text("(220 reviews)",style:TextStyle(fontSize: 10,color: Colors.black,),),


                            ],
                          )// text
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

}