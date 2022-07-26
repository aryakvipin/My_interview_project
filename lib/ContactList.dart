import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp (home: ContactList()));
}
class ContactList extends StatelessWidget{
  List images=[

    'images/man2.png',
    'images/vomen.png',
    'images/child.jpg',
    'images/vomen.png',

  ];
  List name=[
    'Manu',
    'Vipin',
    'Anju',
    'Meena'
  ];
    List numbers=["9745664855","6584586544","9785454641","9544545557"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Contact List"),
      ),
      body: ListView.builder(itemBuilder: (BuildContext ,index){
        return Card(
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
            title: Text(name[index]),
            subtitle: Text(numbers[index]),
            trailing: Wrap(spacing: 2.0,
               children: const [
                 Text("Menu"),
        Icon(Icons.phone)
        ],

          ),
          ),
        );

      },
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
      ),
    );
  }

}

