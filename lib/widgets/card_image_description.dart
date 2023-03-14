import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardImageDescription extends StatelessWidget {
  const CardImageDescription({super.key, required this.rutaImagen, required this.tituloLugar, required this.descripcionLugar, required this.precioLugar});

  final String rutaImagen;
  final String tituloLugar;
  final String descripcionLugar;
  final String precioLugar;

  @override
  Widget build(BuildContext context) {
    final imageCard = Container(
      width: 320,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(rutaImagen),
          fit: BoxFit.cover
          ),
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
    );

    return Stack(
      children: [
        imageCard,
        Container(
          margin: const EdgeInsets.only(top: 140, left: 35),
          child: _PlaceDescription(
            tituloLugar: tituloLugar,
            descripcionLugar: descripcionLugar,
            precioLugar: precioLugar,
          ),
        ),
      ],
    );
  }
}

class _PlaceDescription extends StatelessWidget {
  const _PlaceDescription({required this.tituloLugar, required this.precioLugar, required this.descripcionLugar});
  
  final String tituloLugar;
  final String descripcionLugar;
  final String precioLugar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: 250,
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white
      ),
      child: Column(
        children: [
          //* Titulo del lugar
          Text(tituloLugar, style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),),

          //* Descripcion del lugar
          Container(
            child: Column(
              children: [
                Text(descripcionLugar, style: GoogleFonts.lato(fontSize: 12),),

                //* Precio del lugar
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      Text('Precio: ', style: GoogleFonts.lato(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 18),),
                      const SizedBox(width: 40,),
                      Text(precioLugar, style: GoogleFonts.kadwa(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}