import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMe();
}

class _AboutMe extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation : 0.0,
        brightness: Brightness.dark,
        title: Text("TENTANG SAYA"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            color: Colors.green[400]
          ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset('assets/fotokotak.jpeg'),
              ),
              radius: 80,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Muhammad Fachrurazi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('NIM'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(': 21120120140104'),
                      ),
                    ],
                  ),
                ),
                // bagian alamat
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Alamat'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(
                          ': Jalan Timoho Barat II No.8',
                        ),
                      ),
                    ],
                  ),
                ),
                // bagian email
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Email'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(': fachrurazi021@gmail.com'),
                      ),
                    ],
                  ),
                ),
                // nomor hp
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Nomor Telpon'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(': 088289890745'),
                      ),
                    ],
                  ),
                ),
                // nomor Ultah
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Tanggal Lahir'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(': 24 Juli 2001'),
                      ),
                    ],
                  ),
                ),
                // nomor hp
                const SizedBox(
                  height: 25,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}