import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  final String pathProfile =
      'assets/img/profile.jpg';                                                 // Ruta del archivo de imagen para el avatar

  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profilePic = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover, 
          image: AssetImage(pathProfile)
        ),
      ),
    );
    return profilePic;
  }
}
