import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preskriber/features/profile/application/pages/change_password.dart';

import '../../../../core/widgets/big_button.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/colors_string.dart';
import '../../../../core/widgets/small_text.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const BigText(
                textTitle: 'Edit Profile',
                color: blackColor,
                textSize: 20,
              ),
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 40,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GestureDetector(
                onTap:  (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>
                    const ChangePassword()), );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Change Password',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.caretRight,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              Container(
                decoration: BoxDecoration(
                    color: formGroundColor,
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Full Name',
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
                    hintText: 'Email Address',
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
                    hintText: 'Phone number',
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
                    hintText: 'State',
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
                    hintText: 'Address',
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
                textTitle: 'Save Change',
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
    );
  }
}
