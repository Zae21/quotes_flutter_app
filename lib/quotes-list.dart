import 'package:flutter/material.dart';
import './quote.dart';
import './quote-card.dart';

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List <Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Oscar Wilde'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Oscar Wilde'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'Oscar Wilde'),
  ];

  Widget quoteCard(quote){
    return new QuoteCard(quote:quote);
  }

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
        children: quotes.map((q) => quoteCard(q)).toList()
      )
    );
  }
}