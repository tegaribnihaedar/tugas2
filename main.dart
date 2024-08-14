import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.cyan[50],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            offset: Offset.fromDirection(-15, 53),
            blurRadius: 5
          )
        ]
      ),
      child: Column(
        children: [
          Text(
            teks1,
            textDirection: TextDirection.ltr,
          ),
          Text(
            teks2,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.red
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hallo Dunia'),
        ),
        body: Center(
          child: Column(
            children: [
              TeksUtama(
                teks1: 'Hallo', 
                teks2: 'Dunia',
              ),
              TeksUtama(
                teks1: 'Apa Kabar', 
                teks2: 'hasby',
              ),
              TeksUtama(
                teks1: 'Apa Kabar', 
                teks2: 'Bijer',
              ),
              TeksUtama(
                teks1: 'Apa Kabar', 
                teks2: 'Andi',
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: Icon(Icons.refresh),
          onPressed: () {},
        ),
      ),
    )
  );
}