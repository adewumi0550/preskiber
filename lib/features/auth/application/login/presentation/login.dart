import 'package:flutter/material.dart';
import 'package:preskriber/core/widgets/light_botton.dart';
import '../../../../../core/widgets/colors_string.dart';
import '../../../../../core/widgets/main_page.dart';
import '../../../../../core/widgets/small_text.dart';
import '../../fogot_password/presentation/forgotpassword.dart';
import '../../../../../core/widgets/big_text.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              const BigText(textTitle: 'Welcome Doctor!'),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: SmallText(
                  textTitle: 'Please login to your account',
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Email Address',
                  focusColor: secondaryColor,
                  fillColor: Colors.grey,
                  // filled: true,

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

             const  SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    color: formGroundColor,
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Password',
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

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              LightButton(
                textTitle: 'Login',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
              ),

              // const ColorText(textTitle: 'Login to my account',)
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()),
                        );
                      },
                      child: const Text('Forgot Password?'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
