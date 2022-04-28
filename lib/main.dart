import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamekrub/screens/detail_screens/game_detail_screen.dart';
import 'package:get/get.dart';

//screens
import 'package:gamekrub/screens/auth_screens/sign_in_screen.dart';
import 'package:gamekrub/screens/home/home_screen.dart';


void main() {
  runApp(mainApp());
}

class mainApp extends StatelessWidget {
  const mainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarBrightness: Brightness.light)
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen()
    );
  }
}
