import 'package:flutter/material.dart';
import '../../../../../core/widgets/big_text.dart';
import '../../../../../core/widgets/colors_string.dart';
import '../../../../../core/widgets/light_botton.dart';
import '../../login/presentation/login.dart';
import '../../verification/presentation/verification.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              const Center(child: BigText(textTitle: 'Forgot password')),

              SizedBox(height: MediaQuery.of(context).size.height*0.03,),

              TextFormField(

                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Enter email address',
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

               SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              LightButton(textTitle:'Continue', onTap: () {

                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>
                   const VerifyPhone(phoneNumber: '099999999')), );
              }, ),

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
