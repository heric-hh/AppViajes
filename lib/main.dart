import 'package:flutter/material.dart';
import 'package:viajesastales_app/screens/description_place_screen.dart';
import 'package:viajesastales_app/screens/reviews.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
   final namePlace = 'Duwili Ella';
   final descriptionText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Diam sollicitudin tempor id eu.';
  
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        /*body: DescriptionPlaceScreen(
          descriptionPlace: descriptionText,
          namePlace: namePlace, 
          stars: 4,
        ),*/
        body: Reviews(),

      ),
    );
  }
}
