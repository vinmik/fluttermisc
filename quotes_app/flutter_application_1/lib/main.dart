// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Quote.dart';


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

  List <Quote> a = [
    Quote(text: "Call your waking,", author: "Vineet"),
    Quote(text: "brighter than sun,", author: "Vineet"),
    Quote(text: "Eye of the tiger,", author: "Vineet"),
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
              return Quotecard(quote:S,
              delete: (){
                setState(() {
                  a.remove(S);
                });
              });
            }).toList(),
          
        ),
    );
  }
}

class Quotecard extends StatelessWidget {

final Quote quote;
  // ignore: use_key_in_widget_constructors
  final Function() delete;
  const Quotecard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 10.0,),
            FlatButton.icon(
              onPressed: delete,
              icon: const Icon(Icons.delete),
              label: const Text('Delete'),
              textColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
