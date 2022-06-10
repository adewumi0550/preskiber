import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_string.dart';
//ignore: must_be_immutable
class LightButton extends StatelessWidget {
  GestureTapCallback onTap;
  String textTitle;

  LightButton({Key? key, required this.onTap, required this.textTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
        minWidth: double.infinity,
        height: 50.0,
        color: secondaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child:  Text(
          textTitle,
          style:  GoogleFonts.poppins(
              color: primaryColor,
              fontSize: 15.0,
              fontWeight: FontWeight.w600),
        ),
        onPressed: onTap);
  }
}
