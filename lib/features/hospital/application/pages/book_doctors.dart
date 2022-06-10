// import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/colors_string.dart';
import '../../../../core/widgets/utils/search.dart';
import 'hospital_doctor.dart';

class BookDoctors extends StatefulWidget {
  const BookDoctors({Key? key}) : super(key: key);

  @override
  State<BookDoctors> createState() => _BookDoctorsState();
}

class _BookDoctorsState extends State<BookDoctors> {
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile.png'),),
          )
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },

        ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:  Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text('Book Doctors', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                ),
                const Search(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Previously visited', style: TextStyle(fontSize: 20),),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.width-30,
                  decoration: BoxDecoration(
                      color: doctorBackground,
                      borderRadius: BorderRadius.circular(3)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Dr Ebenezer Adebiyi', style: TextStyle(color: whiteColor, fontSize: 25, fontWeight: FontWeight.w600),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Icon(FontAwesomeIcons.mapMarker, color: whiteColor,size: 15,),
                            SizedBox(width: 5,),
                            Text(' No 1, Orisumibare tanke iledu, Ilorin.', style: TextStyle(color: whiteColor),),

                          ],),
                        const SizedBox(height: 8,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const <Widget>[
                            Icon(FontAwesomeIcons.phoneAlt, color: whiteColor,size: 15,),
                            SizedBox(width: 5,),
                            Text(' +234 816 3040074', style: TextStyle(color: whiteColor)),



                          ],),
                        const SizedBox(height: 20,),
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
                        ],)
                      ],),
                  ),

                ),
                // Container(
                //   padding: EdgeInsets.all(16),
                //   child: DropDownFormField(
                //     titleText: 'My workout',
                //     hintText: 'Please choose one',
                //     value: _myActivity,
                //     onSaved: (value) {
                //       setState(() {
                //         _myActivity = value;
                //       });
                //     },
                //     onChanged: (value) {
                //       setState(() {
                //         _myActivity = value;
                //       });
                //     },
                //     dataSource: [
                //       {
                //         "display": "Running",
                //         "value": "Running",
                //       },
                //       {
                //         "display": "Climbing",
                //         "value": "Climbing",
                //       },
                //       {
                //         "display": "Walking",
                //         "value": "Walking",
                //       },
                //       {
                //         "display": "Swimming",
                //         "value": "Swimming",
                //       },
                //       {
                //         "display": "Soccer Practice",
                //         "value": "Soccer Practice",
                //       },
                //       {
                //         "display": "Baseball Practice",
                //         "value": "Baseball Practice",
                //       },
                //       {
                //         "display": "Football Practice",
                //         "value": "Football Practice",
                //       },
                //     ],
                //     textField: 'display',
                //     valueField: 'value',
                //   ),
                // ),
                const SizedBox(height: 20,),
                const  Text('Found in Ilorin', style: TextStyle(fontSize: 15),),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const HospitalDoctor()), );
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

                const SizedBox(height: 20,),





              ],
            ),
          ),),
      ),
    );
  }
}
