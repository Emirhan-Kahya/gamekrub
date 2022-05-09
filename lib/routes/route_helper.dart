import 'package:gamekrub/screens/auth_screens/sign_in_screen.dart';
import 'package:gamekrub/screens/home/home_screen.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static const String signInPage = '/sign-in';

  static String getInitial() => '$initial';
  static String getSignInPage() => '$signInPage';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomeScreen()),
    GetPage(
      name: signInPage,
      page: () => SignInScreen(),
      transition: Transition.fade,
    ),
  ];
}
