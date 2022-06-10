

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preskriber/core/widgets/big_text.dart';

import '../../../../core/widgets/colors_string.dart';
import '../../../../core/widgets/small_text.dart';

class PatientsProfile extends StatefulWidget {
  const PatientsProfile({Key? key}) : super(key: key);

  @override
  State<PatientsProfile> createState() => _PatientsProfileState();
}

class _PatientsProfileState extends State<PatientsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
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
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) =>
              //   const EditProfile()), );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Edit ',
                    style: TextStyle(color: primaryColor),
                  ),
                ),

              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.37,

            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                mainAxisExtent: 70,
              ),
              children:  <Widget>[

                _menuList(text: 'View examination', onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) =>
                  //   const BookHospitals()), );
                }, color:const Color(0xffD6FAD5), ),
                _menuList(text: 'Add Note', onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) =>
                  //   const PatientsDashboard()), );
                }, color:const Color(0xffD9FAFF), ),


                _menuList(text: 'Prescription', onTap: () {

                }, color:const Color(0xffE1E6FF)),

                _menuList(text: 'History', onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) =>
                  //   const BookHospitals()), );
                }, color:const Color(0xffF2D5FA), ),
                _menuList(text: 'Police report', onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) =>
                  //   const BookHospitals()), );
                }, color:const Color(0xffD2ECFF), ),


                _menuList(text: 'Insurance', onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) =>
                  //   const BookHospitals()), );
                }, color:const Color(0xffE1E6FF),),



              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: BigText(textTitle: 'Patient details',color: blackColor,textSize: 20,),
          ),
          const SizedBox(height: 10,),

         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10.0),
           child: Column(children: [
             Container(
               decoration: BoxDecoration(color: formGroundColor, borderRadius: BorderRadius.circular(15)),
               child: TextFormField(

                 keyboardType: TextInputType.text,
                 decoration: const InputDecoration(
                   hintText: 'Full Name',
                   focusColor: secondaryColor,


                   contentPadding:  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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

             const SizedBox(height: 20,),

             Container(
               decoration: BoxDecoration(color: formGroundColor, borderRadius: BorderRadius.circular(15)),
               child: TextFormField(

                 keyboardType: TextInputType.text,
                 decoration: const InputDecoration(
                   hintText: 'Email Address',
                   focusColor: secondaryColor,


                   contentPadding:  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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

             const SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(color: formGroundColor, borderRadius: BorderRadius.circular(15)),
               child: TextFormField(

                 keyboardType: TextInputType.text,
                 decoration: const InputDecoration(
                   hintText: 'Phone number',
                   focusColor: secondaryColor,


                   contentPadding:  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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

             const SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(color: formGroundColor, borderRadius: BorderRadius.circular(15)),
               child: TextFormField(

                 keyboardType: TextInputType.text,
                 decoration: const InputDecoration(
                   hintText: 'Password',
                   focusColor: secondaryColor,


                   contentPadding:  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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

             const SizedBox(height: 20,),
           ],),
         )
        ],),
      ),
    );
  }


  _menuList({
    required String text,
    required Color color,
    required GestureTapCallback onTap,

  }) {

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  <Widget>[
                Text(text, style: const TextStyle(color: primaryColor),),
                // Icon(icon, color: primaryColor,),

              ],
            ),
          ),
        ),
      ),
    );
  }

}

