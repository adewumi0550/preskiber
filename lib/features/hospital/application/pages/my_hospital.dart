import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preskriber/core/widgets/big_text.dart';
import 'package:preskriber/core/widgets/colors_string.dart';
import 'package:preskriber/features/hospital/application/pages/book_hopsital.dart';

class MyHospital extends StatefulWidget {
  const MyHospital({Key? key}) : super(key: key);

  @override
  State<MyHospital> createState() => _MyHospitalState();
}

class _MyHospitalState extends State<MyHospital> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
               const  BigText(textTitle: 'Hospitals in my area!'),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                const Text('Found in Ilorin'),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const BookHospitals()), );
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
