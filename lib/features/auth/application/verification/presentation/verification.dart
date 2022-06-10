import 'package:flutter/material.dart';
import '../../../../../core/widgets/big_button.dart';
import '../../../../../core/widgets/big_text.dart';
import '../../../../../core/widgets/colors_string.dart';
import 'numeric_pad.dart';

class VerifyPhone extends StatefulWidget {

  final String phoneNumber;

   const VerifyPhone({required this.phoneNumber});

  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {

  String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    const Center(child: BigText(textTitle: 'Reset Password')),
                    const Center(
                      child:  Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                        child: Text(
                          'A reset code has been sent to your email',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),

                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),

                    const Text(
                      "Enter code sent to your email ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF818181),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          buildCodeNumberBox(code.isNotEmpty ? code.substring(0, 1) : ""),
                          buildCodeNumberBox(code.length > 1 ? code.substring(1, 2) : ""),
                          buildCodeNumberBox(code.length > 2 ? code.substring(2, 3) : ""),
                          buildCodeNumberBox(code.length > 3 ? code.substring(3, 4) : ""),

                        ],
                      ),
                    ),


                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: BigButton(onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) =>
                  //      const NewPassword()), );
                }, textTitle: 'Reset Password', color: primaryColor,),
              ),
              const SizedBox(height: 40,),
              NumericPad(
                onNumberSelected: (value) {

                  setState(() {
                    if(value != -1){
                      if(code.length < 4){
                        code = code + value.toString();
                      }
                    }
                    else{
                      code = code.substring(0, code.length - 1);
                    }

                  });
                },
              ),

            ],
          )
      ),
    );
  }

  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 60,
        height: 50,
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF6F5FA),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 25.0,
                  spreadRadius: 1,
                  offset: Offset(0.0, 0.75)
              )
            ],
          ),
          child: Center(
            child: Text(
              codeNumber,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F1F1F),
              ),
            ),
          ),
        ),
      ),
    );
  }
}