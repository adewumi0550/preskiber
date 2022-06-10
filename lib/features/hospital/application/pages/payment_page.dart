import 'package:flutter/material.dart';

import '../../../../core/widgets/big_button.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/colors_string.dart';
import '../../../../core/widgets/light_botton.dart';
import '../../../auth/application/verification/presentation/verification.dart';
import '../../../dashboard/application/pages/home.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              const BigText(textTitle: 'Confirm and pay', color: blackColor,textSize: 30,),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text('Please make the payment and you would get a confirmation in your inbox.'),
             ),

              SizedBox(height: MediaQuery.of(context).size.height*0.03,),

              TextFormField(

                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'NGN1,500',
                  focusColor: Colors.white,


                  contentPadding:  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,


                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                autocorrect: false,
                // onChanged: (value)=> context.read<SignInFormBloc>()
                //     .add(SignInFormEvent.emailChanged(value)),
                // validator: (_) => context.read<SignInFormBloc>()
                //     .state
                //     .emailAddress
                //     .value
                //     .fold(
                //       (f) => f.maybeMap(
                //     invalidEmail: (_)=>'Invalid Email',
                //     orElse: () => null,
                //   ),
                //       (_) => null,),
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              BigButton(textTitle:'Pay Now', onTap: () {

                
              }, color: primaryColor, ),

              // const ColorText(textTitle: 'Login to my account',)


            ],),
        ),
      ),
    );
  }
}
