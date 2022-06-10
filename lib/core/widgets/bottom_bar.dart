import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'colors_string.dart';

//ignore: must_be_immutable
class BottomBar extends StatefulWidget {
  GestureTapCallback onPressed;
  bool bottomIcons;
  String text;
  String textIcons;
  BottomBar(
      {Key? key,
      required this.onPressed,
      required this.bottomIcons,
      required this.textIcons,
      required this.text})
      : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onPressed,
        child: widget.bottomIcons == true
            ? Container(
                decoration: BoxDecoration(
                  //color: Colors.indigo.shade100.withOpacity(0.6),
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 8, bottom: 8),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/${widget.textIcons}',
                      color: whiteColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      widget.text,
                      style: const TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              )
            : SvgPicture.asset('assets/images/${widget.textIcons}', color: primaryColor,));
  }
}
