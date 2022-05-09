import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:gamekrub/models/sign_up_model.dart';
import 'package:gamekrub/data/api/api_client.dart';
import 'package:gamekrub/utils/app_constants.dart';
class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences,
  });

  Future<Response> registration(SignUpModel signUpModel) async{
    return await apiClient.postData(AppConstants.REGISTRATION_URI, signUpModel.toJson());
  }

  Future<String> getUserToken() async{
    return await sharedPreferences.getString(AppConstants.TOKEN)??"None";
  }

  bool usedLoggedIn(){
    return sharedPreferences.containsKey(AppConstants.TOKEN);
  }

  Future<Response> login(String email, String password) async{
    return await apiClient.postData(AppConstants.LOGIN_URI, {"email":email, "password":password});
  }

  Future<bool> saveUserToken(String token) async{
    apiClient.token = token;
    apiClient.updateHeader(token);
    return await sharedPreferences.setString(AppConstants.TOKEN, token);
  }

  bool clearSharedData(){
    sharedPreferences.remove(AppConstants.TOKEN);
    apiClient.token = '';
    apiClient.updateHeader('');
    return true;
  }
}
