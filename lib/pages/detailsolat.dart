import 'package:flutter/material.dart';

class DetailSholatPage extends StatelessWidget {
  DetailSholatPage({
    required this.nama,
    required this.rokaat,
    required this.niat,
    required this.arti,
  });

  String nama;
  String rokaat;
  String niat;
  String arti;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation : 0.0,
        brightness: Brightness.dark,
        title: Text("NIAT SHOLAT"),
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
            child: Text(niat, textAlign: TextAlign.right,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Text(arti, textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 18),),
          ),
        ],
      ),
    );
  }
}