import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'detaildoa.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation : 0.0,
        brightness: Brightness.dark,
        title: Text("DOA SEHARI - HARI", style: TextStyle(fontFamily: 'Roboto'),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            color: Colors.green[400]
          ),
        )
      ),
      body: FutureBuilder<List<dynamic>>(future: getNamaDoa(), builder: (context, snapshot){
        if(snapshot.hasData){
          return ListView.builder(itemCount: snapshot.data!.length ,itemBuilder: (context, index){
            var data = snapshot.data;
            return Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              elevation: 5,
              shadowColor: Colors.green,
              child: ListTile(
                title: Text(snapshot.data![index]['doa']),
                leading: CircleAvatar(
                  backgroundColor: Colors.green[300],
                  child: Text(data![index]['id'], style: TextStyle(color: Colors.white),),),
                  onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailDoa(nama: data[index]['doa'], arab: data[index]['ayat'], latin: data[index]['latin'], arti: data[index]['artinya']);
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

Future<List<dynamic>> getNamaDoa()async{
  var respon = await http.get(Uri.parse('https://doa-doa-api-ahmadramadhan.fly.dev/api'));
  var data = json.decode(respon.body);
  return data;
}
