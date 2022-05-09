import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import 'package:gamekrub/controllers/auth_controller.dart';
import 'package:gamekrub/controllers/user_controller.dart';
import 'package:gamekrub/data/api/api_client.dart';
import 'package:gamekrub/data/repository/auth_repo.dart';
import 'package:gamekrub/data/repository/user_repo.dart';
import 'package:gamekrub/utils/app_constants.dart';

Future<void> init() async{
  final sharedPreferenced = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferenced);

  //apiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));
  Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => UserRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => UserController(userRepo: Get.find()));
}