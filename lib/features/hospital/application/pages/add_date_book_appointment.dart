import 'package:flutter/material.dart';
import 'payment_page.dart';

import '../../../../core/widgets/big_button.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/colors_string.dart';

class AddDateBookAppointment extends StatefulWidget {
  const AddDateBookAppointment({Key? key}) : super(key: key);

  @override
  State<AddDateBookAppointment> createState() => _AddDateBookAppointmentState();
}

class _AddDateBookAppointmentState extends State<AddDateBookAppointment> {
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
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(

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
                    )),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              const BigText(textTitle: 'Select Date', textSize: 20, color: primaryColor,),
               const SizedBox(height: 10,),
               const Padding(
                 padding: EdgeInsets.symmetric(vertical: 8.0),
                 child: Text('Dr Ebenezer would not be available on dates with a blue highlight. So please pick another.', style: TextStyle(height: 2),),
               ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),

                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration:  const InputDecoration(

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      ),
                      hintText: 'Select Date',
                    ),
                    // onTap: (){
                    //   // Below line stops keyboard from appearing
                    //   FocusScope.of(context).requestFocus(new FocusNode());
                    //
                    //   // Show Date Picker Here
                    //
                    // },
                 ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: BigButton(onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const PaymentPage()), );
                  }, textTitle: 'Book', color: primaryColor),
                ),


              ],
            ),
          )
      ),
    );
  }
}
