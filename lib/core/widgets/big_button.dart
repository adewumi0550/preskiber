import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//ignore: must_be_immutable
class BigButton extends StatelessWidget {
  GestureTapCallback onTap;
  String textTitle;
  Color color;
   BigButton({Key? key, required this.onTap, required this.textTitle, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
        minWidth: double.infinity,
        height: 50.0,
        color: color,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child:  Text(
          textTitle,
          style:  GoogleFonts.poppins(
              color: const Color(0xffE8ECFF),
              fontSize: 15.0,
              fontWeight: FontWeight.w700),
        ),
        onPressed: onTap
    );
  }
}
