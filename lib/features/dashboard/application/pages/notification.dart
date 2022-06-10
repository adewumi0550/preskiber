import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/widgets/colors_string.dart';

class AppNotification extends StatefulWidget {
  const AppNotification({Key? key}) : super(key: key);

  @override
  State<AppNotification> createState() => _AppNotificationState();
}

class _AppNotificationState extends State<AppNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              // BigText(textTitle: 'Notifications', color: Colors.black,),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text('Notifications', style:  TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w800 ),),
              ),
              Wrap(
                children: List.generate(3, (index) =>   Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    // height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            // leading: const CircleAvatar(backgroundColor: primaryColor,radius: 5,),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                 CircleAvatar(backgroundColor: primaryColor,radius: 5,),
                                SizedBox(width: 10,),
                                  Text('Preskiber', style: TextStyle(color: primaryColor),),
                                  SizedBox(width: 10,),
                                  Text('now')
                              ],
                            ),
                            // subtitle: const Text('N23.99', style: TextStyle(
                            //     color: primaryColor,
                            //     fontWeight: FontWeight.w700),),
                            trailing: const Icon(FontAwesomeIcons.angleDown),
                          ),
                          const Text('Hi George', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, fontFamily: 'Poppins'),),
                          const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor', style: TextStyle(fontFamily: 'DMSans'),)

                        ],
                      ),
                    ),
                  ),
                )  ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
