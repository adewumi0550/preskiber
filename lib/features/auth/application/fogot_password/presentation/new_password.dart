import 'package:flutter/material.dart';

import '../../../../../core/widgets/big_button.dart';
import '../../../../../core/widgets/big_text.dart';
import '../../../../../core/widgets/colors_string.dart';
import '../../../../../core/widgets/message_pages/success_password.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: const Text('cancel', style: TextStyle(
                          fontSize: 18,
                          color: primaryColor,
                          decoration: TextDecoration.underline),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/8,),
              const Center(child: BigText(textTitle: 'New Password!')),
              const Center(
                child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    'Enter your new password ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),

                  ),
                ),
              ),
              const SizedBox(height: 40,),
              _labelForm('New Password'),
              Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: TextFormField(

                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'New Password',
                    focusColor: Colors.white,


                    contentPadding:  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide.none,


                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
              ),

              _labelForm('Confirm Password'),
              Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: TextFormField(

                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Confirm Password',
                    focusColor: Colors.white,


                    contentPadding:  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide.none,


                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
              BigButton(textTitle:'Update Password', onTap: () {


                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>
                  const SuccessPassword()), );
              }, color: primaryColor,),

              // const ColorText(textTitle: 'Login to my account',)



            ],),
        ),
      ),
    );
  }
  _labelForm(String title) {

    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(title, style: const TextStyle(
        // fontSize: 16.0,
          color: Colors.black, fontFamily: 'Roboto'),),
    );
  }
}
