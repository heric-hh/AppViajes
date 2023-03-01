import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewScreen extends StatelessWidget {
  final String pathProfile;
  final String user;
  final String details;
  final String comments;                                                 // Ruta del archivo de imagen para el avatar

  const ReviewScreen({
    Key? key, 
    required this.pathProfile, 
    required this.user, 
    required this.details, 
    required this.comments
  }) : super(key: key);

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

    // * U S E R   N A M E

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        user,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
          fontSize: 17
        ),
      ),
    );
    
     //* U S E R  I N F O

      final star = Container(
      margin: const EdgeInsets.only(
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

     final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Row(
        children: [
          Text(
            details,
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 72, 74, 75)
            ),
          ),
        ],
      ),
    );

    //* u s e r   c o m m e n t s


    final userComments = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comments,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 72, 74, 75)
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComments
      ],
    );
    
    return Row(
      children: [
        profilePic,
        userDetails,
        star,
      ],
    );    
  }
}
