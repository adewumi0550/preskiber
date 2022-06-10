import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/widgets/big_text.dart';
import '../../../core/widgets/colors_string.dart';
import '../../../core/widgets/small_text.dart';
import 'note_details.dart';

class DoctorNote extends StatefulWidget {
  const DoctorNote({Key? key}) : super(key: key);

  @override
  State<DoctorNote> createState() => _DoctorNoteState();
}

class _DoctorNoteState extends State<DoctorNote> {
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
            const  SizedBox(height: 50,),
             const  BigText(textTitle: 'Doctors note'),
               const SmallText(textTitle: 'Showing 1 - 3 notes',color: blackColor,foo: FontWeight.w800,),
              _hospitalList(title:'Hospital A', onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>
                  const NoteDetails()), );
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
