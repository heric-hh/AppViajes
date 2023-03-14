import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viajesastales_app/screens/gradient_back.dart';

class ProfileScreen extends StatelessWidget {
   
  const ProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [  
          
          GradientBack(),
          
          Stack(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 80, left: 30),
                    child: Text(
                      'Perfil',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),  
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 85, left: 230),
                    child: Icon(Icons.ac_unit_sharp, color: Colors.white,),
                  )

                ],
              ),


            ],
          ),
      ],
    );
  }
}