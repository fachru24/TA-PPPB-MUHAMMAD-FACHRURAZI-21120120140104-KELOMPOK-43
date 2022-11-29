// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'detailsolat.dart';

class SholatPage extends StatelessWidget {
  const SholatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation : 0.0,
        brightness: Brightness.dark,
        title: Text("SHOLAT"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            color: Colors.green[400]
          ),
        )
      ),
      body: FutureBuilder<List<dynamic>>(future: getNiatSholat(), builder: (context, snapshot){
        if(snapshot.hasData){
          return ListView.builder(itemCount: snapshot.data!.length ,itemBuilder: (context, index){
            var data_nama = snapshot.data;
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              elevation: 5,
              shadowColor: Colors.green,
              child: ListTile(
                title: Text(snapshot.data![index]['nama']),
                subtitle: Text(snapshot.data![index]['rokaat']),
                leading: CircleAvatar(
                  backgroundColor: Colors.green[300],
                  child: Text(data_nama![index]['id'], style: TextStyle(color: Colors.white),),),
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailSholatPage(nama: data_nama[index]['nama'], rokaat: data_nama[index]['rokaat'], niat: data_nama[index]['niat'], arti: data_nama[index]['arti'],);
                }));
              },
              ),
            );
          },
          );
        }else{
          return Center();
        }
      },),
    );
  }
}

Future<List<dynamic>> getNiatSholat()async{
  var respon = await http.get(Uri.parse('https://api.npoint.io/24a1c57335ea1241ac93'));
  var data_nama = json.decode(respon.body)['solat'];
  return data_nama;
}
