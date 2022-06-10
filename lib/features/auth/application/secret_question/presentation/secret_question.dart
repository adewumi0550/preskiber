import 'package:flutter/material.dart';
import '../../../../../core/widgets/big_button.dart';
import '../../../../../core/widgets/big_text.dart';
import '../../../../../core/widgets/colors_string.dart';

class SecretQuestion extends StatefulWidget {
  const SecretQuestion({Key? key}) : super(key: key);

  @override
  State<SecretQuestion> createState() => _SecretQuestionState();
}

class _SecretQuestionState extends State<SecretQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
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
              const Center(child: BigText(textTitle: 'You are almost done!')),
              const Center(
                child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    'few step to set up your wallet.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),

                  ),
                ),
              ),
              const SizedBox(height: 40,),
              _labelForm('Select a secret Question'),
              Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: TextFormField(

                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Whats my favourite pet name?',
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

              _labelForm('Answer to screte question'),
              Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: TextFormField(

                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Please enter your answer',
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
              BigButton(textTitle:'Continue', onTap: () {


                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) =>
                //   const Home()), );
              }, color: secondaryColor,),

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
