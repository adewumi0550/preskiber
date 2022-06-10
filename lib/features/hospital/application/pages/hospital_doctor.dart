import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/colors_string.dart';
import 'book_appoinment.dart';

class HospitalDoctor extends StatefulWidget {
  const HospitalDoctor({Key? key}) : super(key: key);

  @override
  State<HospitalDoctor> createState() => _HospitalDoctorState();
}

class _HospitalDoctorState extends State<HospitalDoctor> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: whiteColor,
            foregroundColor: primaryColor,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const BigText(textTitle: 'Victor’s hospital'),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  const Text('Found in Ilorin'),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                        const BookAppointment()), );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Abdulalim’s hospital', style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20
                              ),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                Icon(FontAwesomeIcons.mapMarker, color: primaryColor,size: 15,),
                                SizedBox(width: 5,),
                                Text(' No 1, Orisumibare tanke iledu, Ilorin.'),

                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                                  ),
                                ],),

                                Container(
                                    decoration: const BoxDecoration(color: Color(0xffF4FEF9)),
                                    child: const Text('Available', style: TextStyle(color: Color(0xff0F6A3E) ),))


                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Abdulalim’s hospital', style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 20
                            ),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Icon(FontAwesomeIcons.mapMarker, color: primaryColor,size: 15,),
                              SizedBox(width: 5,),
                              Text(' No 1, Orisumibare tanke iledu, Ilorin.'),

                            ],),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const <Widget>[
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Abdulalim’s hospital', style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 20
                            ),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Icon(FontAwesomeIcons.mapMarker, color: primaryColor,size: 15,),
                              SizedBox(width: 5,),
                              Text(' No 1, Orisumibare tanke iledu, Ilorin.'),

                            ],),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const <Widget>[
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Abdulalim’s hospital', style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 20
                            ),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Icon(FontAwesomeIcons.mapMarker, color: primaryColor,size: 15,),
                              SizedBox(width: 5,),
                              Text(' No 1, Orisumibare tanke iledu, Ilorin.'),

                            ],),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const <Widget>[
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Abdulalim’s hospital', style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 20
                            ),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Icon(FontAwesomeIcons.mapMarker, color: primaryColor,size: 15,),
                              SizedBox(width: 5,),
                              Text(' No 1, Orisumibare tanke iledu, Ilorin.'),

                            ],),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const <Widget>[
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Abdulalim’s hospital', style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 20
                            ),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Icon(FontAwesomeIcons.mapMarker, color: primaryColor,size: 15,),
                              SizedBox(width: 5,),
                              Text(' No 1, Orisumibare tanke iledu, Ilorin.'),

                            ],),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const <Widget>[
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Abdulalim’s hospital', style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 20
                            ),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Icon(FontAwesomeIcons.mapMarker, color: primaryColor,size: 15,),
                              SizedBox(width: 5,),
                              Text(' No 1, Orisumibare tanke iledu, Ilorin.'),

                            ],),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const <Widget>[
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 10,),
                              ),
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
