import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamekrub/routes/route_helper.dart';
import 'package:gamekrub/screens/all_detail_screens/all_games.dart';
import 'package:gamekrub/screens/all_detail_screens/marketplace.dart';
import 'package:gamekrub/screens/detail_screens/game_detail_screen.dart';
import 'package:get/get.dart';

//screens
import 'package:gamekrub/screens/auth_screens/sign_in_screen.dart';
import 'package:gamekrub/screens/home/home_screen.dart';
import 'helper/dependencies.dart' as dep;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
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
      title: 'Gamekrub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SignInScreen()
      initialRoute: RouteHelper.getInitial(),
      getPages: RouteHelper.routes,
    );
  }
}
