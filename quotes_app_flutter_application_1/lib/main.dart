import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Quotes()
  ));
}

class Quotes extends StatefulWidget {
  const Quotes({ Key? key }) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List <String> a = [
    "Call your waking",
    "brighter than sun",
    "Eye of the tiger",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[700],
      ),
      body:
        Column(
          children: 
            a.map((S) {
              return Text(S);
            }).toList(),
          
        ),
    );
  }
}
