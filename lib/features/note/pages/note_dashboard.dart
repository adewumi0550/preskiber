import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/widgets/colors_string.dart';

class NoteDashboard extends StatefulWidget {
  const NoteDashboard({Key? key}) : super(key: key);

  @override
  State<NoteDashboard> createState() => _NoteDashboardState();
}

class _NoteDashboardState extends State<NoteDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
                radius: 40,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffC5EDF3),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(
                  'Add new note',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
                // subtitle: const Text('you can a new patient'),
                trailing: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    FontAwesomeIcons.plusCircle,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
