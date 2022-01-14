// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Ninid(),
  ));
}

class Ninid extends StatefulWidget {
  const Ninid({Key? key}) : super(key: key);

  @override
  State<Ninid> createState() => _NinidState();
}

class _NinidState extends State<Ninid> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text('Ninid'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget> [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0,10.0,30.0,10.0),
            //enter a circle icon

            // ignore: prefer_const_constructors
            child: Text("Name",
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Text("Vineet",
            style: const TextStyle(
              fontSize: 40,
              color: Colors.yellowAccent,
              letterSpacing: 2.0,
            ),
          ),
          const SizedBox(height: 20.0),
          // ignore: prefer_const_constructors
           const Padding(
            padding: EdgeInsets.fromLTRB(30.0,10.0,30.0,10.0),
            // ignore: prefer_const_constructors
            child: Text("AGE",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Text("$counter",
            style: const TextStyle(
              fontSize: 40,
              color: Colors.yellowAccent,
              letterSpacing: 2.0,
            ),
          ),
          //insert empty box
          const SizedBox(height: 20.0),
          //add floating action button
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            // ignore: prefer_const_constructors
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[850],
          ),
          FloatingActionButton(
            onPressed: () {
            setState(() {
              counter--;
            });
          },
            child: Icon(Icons.remove),
            backgroundColor: Colors.grey[850],
            ),
        ],
      )
    );
  }
}