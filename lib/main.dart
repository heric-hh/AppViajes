import 'package:flutter/material.dart';
import 'package:viajesastales_app/screens/description_place_screen.dart';
import 'package:viajesastales_app/screens/gradient_back.dart';
import 'package:viajesastales_app/screens/header.dart';
import 'package:viajesastales_app/screens/reviews.dart';
import 'package:viajesastales_app/screens/travels.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
   
  
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Travels(),
      ),
    );
  }
}
