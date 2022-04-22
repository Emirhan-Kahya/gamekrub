import 'package:flutter/material.dart';
import 'package:gamekrub/screens/home/home_screen.dart';
import 'package:get/get.dart';

//screens
import 'package:gamekrub/screens/auth_screens/sign_in_screen.dart';



void main() {
  runApp(mainApp());
}

class mainApp extends StatelessWidget {
  const mainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen()
    );
  }
}
