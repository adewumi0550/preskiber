
import 'package:flutter/material.dart';
//ignore: must_be_immutable
class BackgroundImage extends StatelessWidget {
  String image;
   BackgroundImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$image'),
            fit: BoxFit.contain,
            colorFilter:  const ColorFilter.mode(Colors.black26, BlendMode.darken),


          )
      ),
    );
  }
}
