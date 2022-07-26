import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Kindacode.com',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
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
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                width: 500,
                height: 500,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[

                    Positioned(
                      right: 40,
                      top: 100,
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
                      top: 100,
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
                      top: 100,
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
                    Positioned(
                      left: 100,
                      top: 220,
                      child: Container(
                        alignment: Alignment.topCenter,
                        height: 180,
                        width: 300,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Image(image: AssetImage('images/hotelbed.jpg'),height: 100,width: 400,fit: BoxFit.fill,) ,// icon
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text("Awesome Room near Boddha",style:TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold),),
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
                     //Container
                  ], //<Widget>[]
                ),
              ),
              // Container(
              //   height: 1000,
              //   color: Colors.pink,
              // ),
            ]),
          ),
        ],
      ),

    );
  }
}