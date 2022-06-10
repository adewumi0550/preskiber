import 'package:flutter/material.dart';
import 'package:preskriber/core/widgets/big_button.dart';
import 'package:preskriber/core/widgets/light_botton.dart';
import 'package:preskriber/features/auth/application/signup/presentation/signup.dart';

import '../../../../../core/widgets/colors_string.dart';
import '../../login/presentation/login.dart';
class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);


  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  Image.asset('assets/images/preskriber_logo.png'),
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: PageView(
                        controller: _pageController,
                        children: [
                          onBoardPage("splash1.png", "Each patient carries his/her own doctor inside of them''- Get your best and caring doctor here"),
                          onBoardPage("splash2.png","Control your medical records conveniently and securely"),
                          onBoardPage("splash3.png",'Secured data for your Patients, Privacy for all',),
                          onBoardPage("splash4.png",'Innovative and sustainable ambulance service',)
                        ],
                        onPageChanged: (value)=>{setCurrentPage(value)},

                      ),
                    ),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4,
                                (index) => getIndicator(index)
                        ),
                      ),
                       SizedBox(height: MediaQuery.of(context).size.height*0.09,),
                        BigButton(onTap: (){

                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const Register()), );
                        }, textTitle: 'Create an account', color: primaryColor,),
                      const SizedBox(height: 10,),
                      LightButton(onTap: (){

                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>
                          const Login()), );
                      }, textTitle: 'Login', ),
                     const  SizedBox(height: 30,),
                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }

  Column onBoardPage(String image, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10,),
        Image.asset(
          "assets/images/$image",
          fit: BoxFit.fill,
        ),

        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Text(title,
          textAlign: TextAlign.center,
          style:const TextStyle(
            fontSize:15,
            color: textColor,
            fontWeight: FontWeight.w800,
          ),),





      ],
    );

  }

  setCurrentPage(int value){
    currentPage = value;
    setState(() {
    });
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      height: 5,
      width: (currentPage == pageNo) ? 5 :5,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: (currentPage== pageNo) ? primaryColor : Colors.grey
      ),
    );
  }
}


