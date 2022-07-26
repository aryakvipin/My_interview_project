import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Myatble()));
}

class Myatble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Table"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Center(
                child: Text("Daya Table Example",
                    style: TextStyle(
                      fontSize: 20,
                    ))),

            Center(
              child: DataTable(
                decoration: BoxDecoration(border: Border.all(),
                color: Colors.pink),
                columns: const [
                  DataColumn(label: Text("ID")),
                  DataColumn(label: Text("Name")),
                  DataColumn(label: Text("Preffesion")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Arya")),
                    DataCell(Text("Teacher")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("2")),
                    DataCell(Text("Vipin")),
                    DataCell(Text("Teacher")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("3")),
                    DataCell(Text("Rithu")),
                    DataCell(Text("Teacher")),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
