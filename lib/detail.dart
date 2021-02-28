import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final List<String> listof = [
    'Seller 1 : Info & product.',
    'Seller 2 : Info & product.',
    'Seller 3 : Info & product.',
    'Seller 4 : Info & product.',
    'Seller 5 : Info & product.',
    'Seller 6 : Info & product.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[200],
          elevation: 0,
          title: Text(
            'Sellers in your area.',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
          ),
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (_, int index) => Listdata(this.listof[index]),
            itemCount: this.listof.length,
          ),
        ));
  }
}

class Listdata extends StatelessWidget {
  String itemname;
  Listdata(this.itemname);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Row(
          children: [
            CircleAvatar(
              child: Text(itemname[0]),
              backgroundColor: Colors.green[200],
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              itemname,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
