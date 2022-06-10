import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/widgets/colors_string.dart';
import '../../../../core/widgets/utils/search.dart';
import '../../../hospital/application/pages/book_hopsital.dart';
import '../../../hospital/application/pages/hospital_lists.dart';
import '../../../note/pages/note_dashboard.dart';
import '../../../patients/presentation/pages/patients_dashboard.dart';
import 'notification.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer:  const MenuDrawer(),

      body: SafeArea(
        child: SingleChildScrollView(
            child:  Padding(
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
                    children:  const <Widget>[

                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile.png'),
                      )
                    ],
                  ),
                  const Text('Hello,', style: TextStyle(fontFamily: 'Poppins'), ),
                  const Text('Doctor!', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  const Search(),
                  Container(
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width-30,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.07, horizontal: MediaQuery.of(context).size.width*0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[],),
                    ),

                  ),

                 const SizedBox(height: 20,),
                  Text('Menu',  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height*0.02),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: MediaQuery.of(context).size.height*0.37,

                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 5,
                        mainAxisExtent: 80,
                      ),
                      children:  <Widget>[
                        _menuList(text: 'Hospitals', onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const HospitalLists()), );
                        }, color:const Color(0xffE1E6FF), icon: 'hospitala.svg'),
                        _menuList(text: 'Patients', onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const PatientsDashboard()), );
                        }, color:const Color(0xffD9FAFF), icon: 'setroscope.svg'),

                        _menuList(text: 'My prescription', onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const NoteDashboard()), );
                        }, color:const Color(0xffF2D5FA), icon: 'prescription.svg'),
                        _menuList(text: 'Add  Timings', onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const BookHospitals()), );
                        }, color:const Color(0xffD2ECFF), icon: 'insurance.svg'),

                        _menuList(text: 'Appointments', onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const BookHospitals()), );
                        }, color:const Color(0xffD6FAD5), icon: 'appointment.svg'),
                        _menuList(text: 'Reports', onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const BookHospitals()), );
                        }, color:const Color(0xffE1E6FF), icon: 'report.svg'),

                        _menuList(text: 'Queries', onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const BookHospitals()), );
                        }, color:const Color(0xffEAEAEA), icon: 'queries.svg'),

                        _menuList(text: 'Tokens', onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const BookHospitals()), );
                        }, color:const Color(0xffFAD5D5), icon: 'token.svg'),

                        _menuList(text: 'Messages', onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                            const BookHospitals()), );
                        }, color:const Color(0xffFAE2D5), icon: 'chats.svg'),




                      ],
                    ),
                  )






        ],
              ),
            ),),
      ),
    );
  }

  _menuList({
   required String text,
    required Color color,
    required GestureTapCallback onTap,
    required String icon
}) {

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: MediaQuery.of(context).size.height*0.08,
        width: MediaQuery.of(context).size.width*0.42,
        decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  <Widget>[
        Text(text, style: const TextStyle(color: primaryColor),),
        // Icon(icon, color: primaryColor,),
          SvgPicture.asset('assets/images/$icon')
        ],
        ),
        ),
        ),
      ),
    );
  }
}
