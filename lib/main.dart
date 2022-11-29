import 'package:doasehari2/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import './pages/tabcontroller.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}