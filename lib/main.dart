import 'package:flutter/material.dart';
import 'package:viajesastales_app/screens/description_place_screen.dart';
import 'package:viajesastales_app/screens/gradient_back.dart';
import 'package:viajesastales_app/screens/header.dart';
import 'package:viajesastales_app/screens/reviews.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
   final namePlace = 'Duwili Ella';
   final descriptionText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Diam sollicitudin tempor id eu.';
  
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: <Widget>[
                DescriptionPlaceScreen(
                  namePlace: namePlace, 
                  descriptionPlace: descriptionText, 
                  stars: 4
                ),
                const Reviews(),
              ],
            ),
            const Header(),
          ],
        ),
      ),
    );
  }
}
