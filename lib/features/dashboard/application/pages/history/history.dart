import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preskriber/core/widgets/big_text.dart';
import 'package:preskriber/core/widgets/colors_string.dart';

class AppHistory extends StatefulWidget {
  const AppHistory({Key? key}) : super(key: key);

  @override
  State<AppHistory> createState() => _AppHistoryState();
}

class _AppHistoryState extends State<AppHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: BigText(
                textTitle: 'History',
                color: blackColor,
                textSize: 24,
              ),
            ),
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: primaryColor),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TabBar(
                            labelStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFc9c9c9),
                                fontWeight: FontWeight.w500),
                            indicator: UnderlineTabIndicator(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 45.0),
                              insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            ),

                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(child: Text('Booking', style: TextStyle(fontWeight: FontWeight.w800), )),
                              Tab(child: Text('Prescriptions', style: TextStyle(fontWeight: FontWeight.w800)),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          height: 400, //height of TabBarView
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    'Showing 1 - 10',
                                    style: TextStyle(

                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),

                                Card(
                                  child: Padding(

                                    padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 22),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                        BigText(textTitle: 'Abdulalim’s hospital',textSize: 18,),
                                        Text('abdulalim@hospital.com',style: TextStyle(color: Color(0xff646778)),),

                                        SizedBox(height: 10,),
                                        BigText(textTitle: 'Dr Abdulalim', textSize: 13,),
                                        Text('10:00am 15TH April 2021', style: TextStyle(color: Color(0xff646778)),)
                                      ],),
                                     const Icon(Icons.close, color: Colors.red,size: 18,),
                                    ],),
                                  )),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    'Showing 1 - 10',
                                    style: TextStyle(

                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),

                                Card(
                                    child: Padding(

                                      padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 22),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [
                                          const BigText(textTitle: 'Tramadol',textSize: 20,),
                                          const Text('3 times Daily',style: TextStyle(color: Color(0xff646778)),),

                                          const SizedBox(height: 10,),
                                          const BigText(textTitle: '15th April - 28th April 2021', textSize: 13,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:  [
                                              Text('Prescribed by Dr Victor', style: TextStyle(color: Colors.grey),),

                                              Row(
                                                children: const [
                                                  Divider(),
                                                  Text('Not received', ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],),
                                    )),
                              ],
                            ),
                          ]))
                    ])),
          ],
        ),
      ),
    );
  }
}
