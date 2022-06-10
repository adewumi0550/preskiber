import 'package:flutter/material.dart';
//ignore: must_be_immutable
class MenuDashboard extends StatelessWidget {
  GestureTapCallback onTap;
  Color color;
  Color foreColor;
  String title;
  IconData icon;
   MenuDashboard({Key? key, required this.onTap,required this.color, required this.title,required this.icon, required this.foreColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height*0.08,
          width: MediaQuery.of(context).size.width*0.42,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  <Widget>[
                Text(title, style: TextStyle(color: foreColor, fontWeight: FontWeight.w800),),
                // Icon(icon, color: foreColor,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
