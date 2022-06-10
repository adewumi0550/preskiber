import 'package:flutter/material.dart';

import 'colors_string.dart';
class BigText extends StatelessWidget {
  final Color? color;
  final String textTitle;
  final double? textSize;
   const BigText({Key? key, this.color, required this.textTitle, this.textSize }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textTitle,
      style: TextStyle(
          color: color??primaryColor,
          fontSize: textSize?? 32,
          // fontFamily: 'DMSans',
           fontWeight: FontWeight.w700
      ), );
  }
}
