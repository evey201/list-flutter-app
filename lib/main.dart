// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'The journey of a thousand miles begins with one step.',
        author: 'Lao Tzu'),
    Quote(
        text: 'That which does not kill us makes us stronger.',
        author: 'Friedrich Nietzsche'),
    Quote(
        text: 'Life is what happens when you are busy making other plans.',
        author: 'John Lennon'),
    // Quote(
    //     text: 'You only live once, but if you do it right, once is enough.',
    //     author: 'Mae West'),
    // Quote(text: 'Get busy living or get busy dying.', author: 'Stephen King'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.red[400],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}
