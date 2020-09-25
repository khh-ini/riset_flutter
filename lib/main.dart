import 'package:flutter/material.dart';
import 'Quote.dart';
import 'quote_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Quotes(),
    );
  }
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(author: 'pepatah1', text: 'Tong kosong nyaraing bunyinya'),
    Quote(author: 'pepatah2', text: 'Musuh dalam selimut'),
    Quote(author: 'pepatah3', text: 'Mulutmu harimaumu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awsome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((q) => QuoteCard(
                quote: q,
                delete: () {
                  setState(() {
                    quotes.remove(q);
                  });
                }))
            .toList(),
      ),
    );
  }
}
