import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viajesastales_app/screens/gradient_back.dart';
import 'package:viajesastales_app/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
   
  const ProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [  
          
          //* Gradiente
          Container(
            height: 400,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 155, 117, 245),
                  Color.fromARGB(255, 85, 44, 180),
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          
          Stack(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 80, left: 30),
                    child: Text(
                      'Perfil',
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),  
                    ),
                  ),

                  //* Container del icono
                  Container(
                    padding: EdgeInsets.only(top: 85, left: 230),
                    child: Icon(Icons.ac_unit_sharp, color: Colors.white,),
                  )
                ],
              ),

            //* Row del profile pic y nombre del perfil
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 140, left: 30),
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/img/jam.jpg'), fit: BoxFit.cover)
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 140, left: 20),
                    child: Text('Filomena Pérez', style: GoogleFonts.lato(fontSize: 18, color: Colors.white70),),
                  )
                ],
              ),

              //* Row de la tira de iconos
              Container(
                margin: EdgeInsets.only(top: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      mini: true,
                      backgroundColor: Colors.white38,
                      child: Icon(Icons.charging_station, color: Colors.indigo,),
                    ),

                    FloatingActionButton(
                      onPressed: () {},
                      mini: true,
                      backgroundColor: Colors.white38,
                      child: Icon(Icons.memory, color: Colors.indigo,),
                    ),

                    FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add, color: Colors.indigo,),
                    ),

                    FloatingActionButton(
                      onPressed: () {},
                      mini: true,
                      backgroundColor: Colors.white38,
                      child: Icon(Icons.credit_card, color: Colors.indigo,),
                    ),

                    FloatingActionButton(
                      onPressed: () {},
                      mini: true,
                      backgroundColor: Colors.white38,
                      child: Icon(Icons.person, color: Colors.indigo,),
                    ),
                  ],
                ),
              ),

              //* Lugares para visitar
              Container(
                margin: EdgeInsets.only(top: 280, left: 35),
                child: ListView(
                  children: const [ 
                    place_details(),
                    place_details(), 
                  ]
                ),
              )
            ],
          ),
      ],
    );
  }
}

class place_details extends StatelessWidget {
  const place_details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        CardImageDescription(
          descripcionLugar: 'The safe and scenic Pikes Peak Highway', 
          precioLugar: '\$5000', 
          rutaImagen: 'assets/img/place2.jpg', 
          tituloLugar: 'Pikes Peak Mountain',
        ),
      ]
    );
  }
}