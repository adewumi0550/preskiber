import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/big_button.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/colors_string.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              const BigText(
                textTitle: 'Change Password',
                color: blackColor,
                textSize: 20,
              ),


               SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),

              Container(
                decoration: BoxDecoration(
                    color: formGroundColor,
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Old Password',
                    focusColor: secondaryColor,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
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

              const SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                    color: formGroundColor,
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'New Password',
                    focusColor: secondaryColor,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
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

              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: formGroundColor,
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Confirm Password',
                    focusColor: secondaryColor,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
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



              const SizedBox(
                height: 20,
              ),


              BigButton(
                textTitle: 'Save Password',
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) =>
                  //   const UpdateProfile()), );
                },
                color: primaryColor,
              ),


            ],
          ),
        ),
      ),
    );;
  }
}
