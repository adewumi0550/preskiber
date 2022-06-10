import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/widgets/colors_string.dart';
import '../../../core/widgets/menu_button.dart';
import '../../hospital/application/pages/book_doctors.dart';
import '../../hospital/application/pages/book_hopsital.dart';
import 'doctor_note.dart';

class UserHospitalDetails extends StatefulWidget {
  const UserHospitalDetails({Key? key}) : super(key: key);

  @override
  State<UserHospitalDetails> createState() => _UserHospitalDetailsState();
}

class _UserHospitalDetailsState extends State<UserHospitalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child:  Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 10),
                  child: Text('Victors’s hospital', style: TextStyle(fontSize: 26,fontWeight: FontWeight.w800, ),),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text('Various hospital you have visited previously'),
                    ),
                    CircleAvatar(child: Text('V', style: TextStyle(color: Colors.black ),), radius: 20,backgroundColor: Color(0xffE5E4E4),)
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      CircleAvatar(radius: 5, backgroundColor: Colors.green,),
                      SizedBox(width: 10,),
                      Text('Available', style: TextStyle(fontWeight: FontWeight.w800, color: Colors.grey),)
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.width-30,
                  decoration: BoxDecoration(
                      color: const Color(0xff4E5FAC),
                      borderRadius: BorderRadius.circular(3)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  <Widget>[
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Victor’s hospital', style: TextStyle(color: whiteColor, fontSize: 25, fontWeight: FontWeight.w600),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Icon(FontAwesomeIcons.mapMarker, color: whiteColor,size: 15,),
                            SizedBox(width: 5,),
                            Text(' No 1, Orisumibare tanke iledu, Ilorin.', style: TextStyle(color: whiteColor),),

                          ],),
                         SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const <Widget>[
                            Icon(FontAwesomeIcons.phoneAlt, color: whiteColor,size: 15,),
                            SizedBox(width: 5,),
                            Text(' +234 816 3040074', style: TextStyle(color: whiteColor)),



                          ],),

                      ],),
                  ),

                ),
                const SizedBox(height: 20,),
                Row(children: <Widget>[
                  MenuDashboard(title: 'View Appointments', onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const BookHospitals()), );
                  }, color: primaryColor,
                      icon: FontAwesomeIcons.solidBuilding, foreColor: whiteColor),
                  MenuDashboard(title: 'Book', onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const BookDoctors()), );
                  }, color: const Color(0xffD9FAFF),
                      icon: FontAwesomeIcons.userNurse,  foreColor: blackColor)
                ],),
                Row(children: <Widget>[
                  MenuDashboard(title: 'See Prescription', onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const BookHospitals()), );
                  }, color:const Color(0xffDB8E62),
                    icon: FontAwesomeIcons.solidBuilding,
                      foreColor: whiteColor,
                  ),
                  MenuDashboard(title: 'See Notes', onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const DoctorNote()), );
                  }, color: const Color(0xff4D8AB3),
                      icon: FontAwesomeIcons.userNurse, foreColor: whiteColor
                  )
                ],),

                const SizedBox(height: 20,),





              ],
            ),
          ),),
      ),
    );
  }


}
