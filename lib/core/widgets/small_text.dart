import 'package:flutter/material.dart';

import 'colors_string.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String textTitle;
  final FontWeight? foo;
  const SmallText({Key? key, this.color, required this.textTitle, this.foo }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textTitle,
      style: TextStyle(color: color??blackColor, fontSize: 15,fontFamily: 'Poppins', ), );
  }
}
