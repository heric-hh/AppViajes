import 'package:flutter/material.dart';
import 'package:viajesastales_app/screens/description_place_screen.dart';
import 'package:viajesastales_app/screens/reviews.dart';
import 'header.dart';

class HomeScreen extends StatelessWidget {

  final namePlace = 'Duwili Ella';
  final descriptionText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Diam sollicitudin tempor id eu.';
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    ); 
}
}