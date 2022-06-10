import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preskriber/features/chat/pages/chat.dart';
import 'package:preskriber/features/dashboard/application/pages/dashboard.dart';
import 'package:preskriber/features/dashboard/application/pages/notification.dart';
import 'package:preskriber/features/profile/application/pages/profile.dart';

import '../../features/dashboard/application/pages/history/history.dart';
import 'bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

enum BottomIcons { home, favorite, search, account }

class _MainPageState extends State<MainPage> {
  BottomIcons bottomIcons = BottomIcons.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
    notchMargin: 1,
    child: Stack(
        // clipBehavior: Clip.hardEdge,
        children: <Widget>[
          bottomIcons == BottomIcons.home
              ? const Dashboard()
              : Container(),
          bottomIcons == BottomIcons.favorite
              ? const AppHistory()
              : Container(),
          bottomIcons == BottomIcons.search
              ? const ChatApp()
              : Container(),
          bottomIcons == BottomIcons.account
              ? const Profile()
              : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.home;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.home ? true : false,

                      text: "Home", textIcons: 'home.svg',),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.favorite;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.favorite ? true : false,
                      textIcons: 'history.svg',
                      text: "Notification"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.search;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.search ? true : false,
                      textIcons: 'chat.svg',
                      text: "Chat"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.account;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.account ? true : false,
                      textIcons: 'set.svg',
                      text: "Settings"),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
