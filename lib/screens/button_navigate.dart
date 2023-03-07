import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonNavigate extends StatelessWidget {
  final String buttonText;
  const ButtonNavigate({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Navegando'),
            backgroundColor: Colors.indigo, 
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20, 
        ),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Colors.indigo,
              Colors.black,
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.lato(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}