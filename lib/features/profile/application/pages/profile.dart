import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preskriber/core/widgets/big_button.dart';
import 'package:preskriber/core/widgets/colors_string.dart';
import 'package:preskriber/features/profile/application/pages/edit_profile.dart';
import '../../../../core/widgets/big_text.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool status = false;
  bool status1 = false;
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
             const BigText(
                textTitle: 'Settings',
                color: Colors.black,
               textSize: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 40,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      width: 200,
                      height: 50,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const EditProfile()), );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const <Widget>[
                              Text(
                                'Edit Profile',
                                style: TextStyle(color: whiteColor),
                              ),
                              Icon(
                                FontAwesomeIcons.caretRight,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Privacy Request',
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        FlutterSwitch(
                          width: 50,
                          height: 25,
                          value: status,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  _titleBar('preferences'),
                  _profile(
                      title: 'Notification',
                      icon: FontAwesomeIcons.bell,
                      status: true),
                  _profile(
                      title: 'Dark Mode',
                      icon: FontAwesomeIcons.moon,
                      status: false),
                  _profile(
                      title: 'Language',
                      icon: FontAwesomeIcons.globe,
                      status: true),
                  _titleBar('App Settings'),
                  _profile(
                      title: 'Turn on GPS',
                      icon: FontAwesomeIcons.mapMarker,
                      status: false),
                  SizedBox(
                      width: 150,
                      height: 40,
                      child: BigButton(
                        onTap: () {},
                        textTitle: 'Logout',
                        color: const Color(0xFFFFD8D4),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _profile(
      {required String title, required IconData icon, required bool status}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          icon,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
            FlutterSwitch(
              width: 50,
              height: 25,
              value: status,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  _titleBar(String title) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: const Color(0xffF7F7F7),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
