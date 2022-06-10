import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preskriber/core/widgets/big_text.dart';
import 'package:preskriber/features/patients/presentation/pages/patients_profile.dart';

import '../../../../core/widgets/big_button.dart';
import '../../../../core/widgets/colors_string.dart';
import '../../../hospital/application/pages/hospital_doctor.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientsDashboard extends StatefulWidget {
  const PatientsDashboard({Key? key}) : super(key: key);

  @override
  State<PatientsDashboard> createState() => _PatientsDashboardState();
}

class _PatientsDashboardState extends State<PatientsDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
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
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: Text(
                    'Patients',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                      color: const Color(0xff0D7180),
                      borderRadius: BorderRadius.circular(3)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffC5EDF3),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text(
                      'Add new patient',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text('you can a new patient'),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        FontAwesomeIcons.plusCircle,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const BigText(
                  textTitle: 'Find patients',
                  textSize: 20,
                  color: blackColor,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width / 2,
                        child: BigButton(
                          color: primaryColor,
                          textTitle: 'Confirm',
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PatientsProfile()),
                            );
                          },
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
