import 'package:flutter/material.dart';
import 'package:preskriber/core/widgets/big_button.dart';
import 'package:preskriber/core/widgets/big_text.dart';
import 'package:preskriber/core/widgets/colors_string.dart';

import 'add_book_appointment.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: primaryColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
        children: <Widget>[
            SizedBox(

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
              children: <Widget>[
                  Image.asset('assets/images/doctor.png'),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                        BigText(textTitle: 'Dr. Ebenezer Adebiyi'),
                          Text('Neuro Surgeon'),

                      ],),
                    ),
                  )
              ],
            ),
                )),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Container(
            height: MediaQuery.of(context).size.height*0.1,
            // margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(10)

            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl sit egestas faucibus eget quis pharetra enim. '),
            ),),
          SizedBox(height: MediaQuery.of(context).size.height*0.04,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BigButton(onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>
                const AddBookAppointment()), );
            }, textTitle: 'Book Appointment', color: primaryColor),
          )

        ],
            ),
          )
      ),
    );
  }
}
