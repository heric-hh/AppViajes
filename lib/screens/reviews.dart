import 'package:flutter/material.dart';
import 'package:viajesastales_app/screens/review.dart';

class Reviews extends StatelessWidget {                                              // Ruta del archivo de imagen para el avatar
 
  const Reviews({
    Key? key, 

  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ReviewScreen (
          pathProfile: 'assets/img/profile.jpg',
          user: 'Chris Wiskas',
          details: '1 review, 5 photos',
          comments: 'Este es un lugar tripiante',
        ),
        ReviewScreen(
          pathProfile: 'assets/img/andrea.jpg', 
          user: 'Andrea', 
          details: '3 reviews, 10 photos', 
          comments: 'Que bonito lugar para acampar'
        ),

        ReviewScreen(
          pathProfile: 'assets/img/jam.jpg', 
          user: 'Tiburcia Diaz', 
          details: '10 reviews, 15 photos', 
          comments: 'Que agradable sujeto'
        ),

        ReviewScreen(
          pathProfile: 'assets/img/pixabay.jpg', 
          user: 'Clemente Jackson', 
          details: '4 reviews, 10 photos', 
          comments: 'Buena comida'
        )
      ],
    );
  }
}
