import 'package:flutter/material.dart';
import 'package:plus_health/widgets/homescreen.dart';
import './widgets/page1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Plus Health',
      theme: ThemeData(
         brightness: Brightness.light,
        // primaryColor: kPrimaryColor,
        // scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const Homescreen(),
    );
  }
}
