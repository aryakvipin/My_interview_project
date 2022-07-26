import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogtList extends StatelessWidget{
  List images=[

    'assets/images/hotel.jpg',
    'assets/images/bag.jpg',
    'assets/images/bangle.jpg',
    'assets/images/earing.jpg',

  ];
  List name=[
    'How to Steem Like you always Have Your Shot Together',
    'How to Steem Like you always Have Your Shot Together',
    'How to Steem Like you always Have Your Shot Together',
    'How to Steem Like you always Have Your Shot Together',
  ];
  List numbers=["Jonyhy Vino","josheph","Rose","Jasmin"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(itemBuilder: (BuildContext ,index){
        return Container(height:150,width: 200,
            child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Row(
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20),
          child: Card(
            child: AspectRatio(
            aspectRatio: 4 / 4,
             child:
               Image.asset(images[index],fit: BoxFit.fitHeight,),
            ),
          ),
        ),
        SizedBox(
        width: 10.0,
        ),
        Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         Padding(
           padding: const EdgeInsets.only(top: 30),
           child: Text(name[index],
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),maxLines: 2, overflow: TextOverflow.clip,
        ),
         ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Icon(Icons.circle,color: Colors.redAccent,),

                  ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(numbers[index],
                    overflow: TextOverflow.clip,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("4 min read",
                    overflow: TextOverflow.clip,
                  ),
                ),

              ],
            ),
          ),


        ],
        ),
        ),

        ],
        ),
        ),
          // Card(
          //   child: ListTile(
          //     leading:    Column(
          //       mainAxisSize: MainAxisSize.min,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Image.asset("images/hotel.jpg", fit: BoxFit.fitHeight,height: 80,width: 100,),
          //
          //       ],
          //     ),
          //
          //     title: Text(name[index]),
          //     subtitle: Column(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(top: 80),
          //           child: Text(numbers[index]),
          //         ),
          //       ],
          //     ),
          //     trailing: Padding(
          //       padding: const EdgeInsets.only(top: 80,right: 150),
          //       child: Wrap(spacing: 3.0,
          //         children: const [
          //           Text("Menu"),
          //           Icon(Icons.phone)
          //         ],
          //
          //
          //       ),
          //     ),
          //   ),
          //   elevation: 5,
          // ),
        );

      },
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
      ),
    );
  }

}

