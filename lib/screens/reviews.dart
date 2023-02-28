import 'package:flutter/material.dart';
import 'package:viajesastales_app/screens/review.dart';

class Reviews extends StatelessWidget {
  final String pathProfile;
  final String user;
  final String details;
  final String comments;                                                 // Ruta del archivo de imagen para el avatar
 
  const Reviews({
    Key? key, 
    required this.pathProfile, 
    required this.user, 
    required this.details, 
    required this.comments
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final List<Widget> reviews = [
      ReviewScreen(
        pathProfile = 'assets/img/profile.jpg',
        user = 'Chris Wiskas',
        details = '1 review, 5 photos',
        comments = 'This is an amazing place in Sri Lanka',
      ),
    ];
    return const Placeholder();
    );
  }
}
