import 'package:flutter/material.dart';
import 'package:viajesastales_app/screens/card_image_list.dart';
import 'package:viajesastales_app/screens/gradient_back.dart';

class Header extends StatelessWidget {
   
  const Header({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack(),
        CardImageList(),
      ],
    );
  }
}