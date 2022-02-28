import 'package:flutter/material.dart';
import 'package:i_care_about_my_bike/home_page.dart';
import 'package:i_care_about_my_bike/login_page.dart';

void main() {
  runApp(
    MaterialApp(
     home: MainApp(),
     debugShowCheckedModeBanner: false,
  ) 
  );
}


class MainApp extends StatelessWidget {
  const MainApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}