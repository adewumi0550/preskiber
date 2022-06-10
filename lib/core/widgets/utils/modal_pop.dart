

import 'package:flutter/material.dart';

import '../big_button.dart';
class ModalPopup extends StatelessWidget {
  final String title;
  final String message;
  final  IconData icon;

  const ModalPopup({Key? key,
    required this.title,
    required this.message,
    required this.icon
   }) : super(key: key);

  @override

    Future<void> _showMyDialog(context)  {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title:  Text(title),
            content: SizedBox(
              height: MediaQuery.of(context).size.height*0.4,
              child: SingleChildScrollView(
                child: ListBody(
                  children:  <Widget>[
                    Icon(icon),
                    Text(message),

                  ],
                ),
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),

              BigButton(onTap: (){}, textTitle: 'Confirm', color: Colors.black,)
            ],
          );
        },
      );
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }

