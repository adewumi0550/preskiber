import 'package:flutter/material.dart';
import 'package:preskriber/core/widgets/colors_string.dart';
import 'package:preskriber/features/auth/application/splash/presentation/onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preskiber',
      theme: ThemeData(
        primaryColor: primaryColor
      ),
      home: const OnBoard(),
    );
  }
}
