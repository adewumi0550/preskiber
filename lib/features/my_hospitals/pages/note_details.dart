import 'package:flutter/material.dart';

import '../../../core/widgets/big_text.dart';

class NoteDetails extends StatefulWidget {
  const NoteDetails({Key? key}) : super(key: key);

  @override
  State<NoteDetails> createState() => _NoteDetailsState();
}

class _NoteDetailsState extends State<NoteDetails> {
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
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                          radius: 50,
                        ),
                      ])
                ]))));
  }
}
