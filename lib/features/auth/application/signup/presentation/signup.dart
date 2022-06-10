import 'package:flutter/material.dart';
import 'package:preskriber/features/dashboard/application/pages/home.dart';
import '../../../../../core/widgets/big_button.dart';
import '../../../../../core/widgets/big_text.dart';
import '../../../../../core/widgets/colors_string.dart';
import '../../../../../core/widgets/small_text.dart';
import '../../login/presentation/login.dart';
import '../../update_profile/update_profile.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height/8,),
              const BigText(textTitle: 'Welcome Doctor!', color: primaryColor,),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: SmallText(textTitle: 'Please provide following  details for your new account',),
              ),
             const SizedBox(height: 40,),

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

              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('By creating your account you agree with to our Terms and Conditions. '),
              ),
              const SizedBox(height: 10,),
              BigButton(textTitle:'Create an account', onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>
                  const Home()), );
                
                

              }, color: primaryColor,),

              // const ColorText(textTitle: 'Login to my account',)
              const SizedBox(height: 20,),
              Center(
                child: GestureDetector(
                  onTap: (){

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const Login()), );
                  },
                  child: const Text('Login to my account', style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                ),
              )


            ],),
        ),
      ),
    );
  }

}
