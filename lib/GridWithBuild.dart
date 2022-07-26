import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:GridBuilder() ));
}
class GridBuilder extends StatelessWidget{
//  List  prducts=List.generate(50, (index) => "Product $index");
  List images=[

    'assets/images/Color.png',
    'assets/images/ins.png',
    'assets/images/google.png',
    'assets/images/ins.png',
    'assets/images/google.png',
    'assets/images/ins.png',
    'assets/images/google.png'

  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
   body: GridView.builder(itemCount: images.length,
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
       itemBuilder: (BuildContext obj,index){
     return Card(
       child: Image(image: AssetImage(images[index]),),
     );
       }),
  );
  }

}