import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
   
  const ProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Text(
          'ProfileScreen',
          style: GoogleFonts.lato(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}