import 'dart:ui';

import 'package:flutter/material.dart';

class DetailDoa extends StatelessWidget {
   DetailDoa({super.key,
   required this.nama, required this.arab, required this.latin, required this.arti,});

String nama;
String arab;
String latin;
String arti;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation : 0.0,
        brightness: Brightness.dark,
        title: Text("DETAIL DOA"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            color: Colors.green[400]
          ),
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 50), 
            child: Text(nama, textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Text(arab, textAlign: TextAlign.right,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Mushaf'),),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Text(textAlign: TextAlign.justify, latin,
        style: TextStyle(fontSize: 18),),
          ),
           Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                Text("Artinya",
        style: TextStyle(fontSize: 18)),
                Text(arti, textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 18))
              ],
            ),
          )
        ],
      ),
    );
    
  }
}