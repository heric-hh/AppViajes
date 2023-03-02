import 'package:flutter/material.dart';
import 'package:viajesastales_app/screens/card_image.dart';

class CardImageList extends StatelessWidget {
   
  const CardImageList({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(pathImage: 'assets/img/place1.jpg'),
          CardImage(pathImage: 'assets/img/place2.jpg'),
          CardImage(pathImage: 'assets/img/place3.jpg'),
        ],
      ),
    );
  }
}