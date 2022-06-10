import 'package:flutter/material.dart';
import '../../../core/widgets/utils/search.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child:  Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[

                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text('Chat', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                ),
                Search(),


              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png'),),
                title: Text('Dr Ebenezer Adebiyi', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                ),
                ),
                subtitle: Text('Call me later'),
                trailing: Text('9.00am', style: TextStyle(color: Colors.grey),),
              ),
                Divider(),


                ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png'),),
                  title: Text('Dr Ebenezer Adebiyi', style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700
                  ),
                  ),
                  subtitle: Text('Call me later'),
                  trailing: Text('9.00am', style: TextStyle(color: Colors.grey),),
                ),
                Divider(),

                SizedBox(height: 20,),





              ],
            ),
          ),),
      ),
    );
  }
}
