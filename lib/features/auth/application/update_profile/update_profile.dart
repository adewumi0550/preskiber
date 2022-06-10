import 'package:flutter/material.dart';
import 'package:preskriber/core/widgets/colors_string.dart';
import 'package:preskriber/core/widgets/main_page.dart';
import '../../../../core/widgets/big_button.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  late double _height;

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
        // backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: _height/12,),
                Center(
                    child: Image.asset(

                      'assets/images/thumb_up.png',
                      fit: BoxFit.fill,
                      // height: 100,
                      // width: 100,
                    )
                ),

                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                  child: Center(
                    child: Text(
                      'Account Created!',
                      style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'Poppins',
                          fontSize: MediaQuery.of(context).size.width*0.08,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    'Your account has been created successfully. Press continue to start using app.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 16,
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                  child: BigButton(onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const MainPage()), );
                  }, textTitle: 'Continue', color: primaryColor),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    'By clicking start, you agree to our Privacy Policy our Teams and Conditions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // color: Colors.white,
                      // fontSize: 16,
                    ),

                  ),
                ),

              ],
            ),
          ),
        )
    );
  }

}
