import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preskriber/core/widgets/colors_string.dart';

import '../../../core/widgets/big_text.dart';
import '../../../core/widgets/small_text.dart';
import 'hospital_details.dart';

class UserHospital extends StatefulWidget {
  const UserHospital({Key? key}) : super(key: key);

  @override
  State<UserHospital> createState() => _UserHospitalState();
}

class _UserHospitalState extends State<UserHospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
              const BigText(textTitle: 'My Hospitals'),
              const SmallText(textTitle: 'Various hospital you have visited previously',),
              _hospitalList(title:'Hospital A', onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>
                  const UserHospitalDetails()), );
              }),
              _hospitalList(title:'Hospital B', onTap:(){}),
              _hospitalList(title:'Hospital C', onTap:(){}),
            ],
          ),
        ),
      ),
    );
  }

  _hospitalList({required String title,  onTap}) {
    return  Card(
      child: ListTile(
        title: Text(title,style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700),),
        subtitle: const Text('contact details'),
        trailing: GestureDetector(onTap: onTap,child: const Icon(FontAwesomeIcons.plusCircle,color: primaryColor,),),
      ),
    );
  }
}
