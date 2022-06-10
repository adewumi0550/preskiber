import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preskriber/features/dashboard/application/pages/dashboard.dart';
import 'package:preskriber/features/dashboard/application/pages/hospital.dart';
import 'package:preskriber/features/dashboard/application/pages/notification.dart';
import 'package:preskriber/features/profile/application/pages/profile.dart';

import '../../../../core/widgets/colors_string.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard(),
    const AppNotification(),
    const Hospital(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 1,
        child: SizedBox(height: 60,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(onPressed: (){
                        setState(() {
                          currentScreen = const Dashboard();
                          currentTab = 0;
                        });
                      },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(FontAwesomeIcons.home,
                              color: currentTab ==0? primaryColor: Colors.grey,
                            ),

                            // Text(' Home', style: TextStyle(color: currentTab ==0? Colors.blue: Colors.grey),)
                          ],
                        ),
                      ),
                      MaterialButton(onPressed: (){
                        setState(() {
                          currentScreen = const AppNotification();
                          currentTab = 1;
                        });
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(FontAwesomeIcons.store,
                                color: currentTab ==1? primaryColor : Colors.grey,
                              ),
                              // Text('Offer', style: TextStyle(color: currentTab ==0? Colors.blue: Colors.grey),)
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(onPressed: (){
                        setState(() {
                          currentScreen = const AppNotification();
                          currentTab = 2;
                        });
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(FontAwesomeIcons.solidBell,
                                color: currentTab ==2 ? primaryColor : Colors.grey,
                              ),
                              // Text('Notfiy', style: TextStyle(color: currentTab ==0? Colors.blue: Colors.grey),)
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(onPressed: (){
                        setState(() {
                          currentScreen = const Profile();
                          currentTab = 3;
                        });
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(FontAwesomeIcons.cog,
                              color: currentTab == 3 ? primaryColor : Colors.grey,
                            ),
                            // Text('Dashboard', style: TextStyle(color: currentTab ==3? Colors.blue: Colors.grey),)
                          ],
                        ),
                      ),

                    ],
                  ),
                ],),
            ),
          ),
        ),
      ),

    );
  }
}
