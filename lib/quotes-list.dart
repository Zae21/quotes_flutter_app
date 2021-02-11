import 'package:flutter/material.dart';
import './quotes.dart';

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List <Quotes> quotes = [
    Quotes(text: 'Be yourself; everyone else is already taken', author: 'Osca Wiled'),
    Quotes(text: 'I have nothing to declare except my genius', author: 'Osca Wiled'),
    Quotes(text: 'The truth is rarely pure and never simple', author: 'Osca Wiled'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((q) => Text('${q.text}  (${q.author})')).toList()
      )
    );
  }
}
