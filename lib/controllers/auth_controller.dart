import 'package:gamekrub/models/response_model.dart';
import 'package:gamekrub/models/sign_up_model.dart';
import 'package:get/get.dart';

import 'package:gamekrub/data/repository/auth_repo.dart';
class AuthController extends GetxController implements GetxService{
  final AuthRepo authRepo;

  AuthController({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> registration(SignUpModel signUpModel) async{
    _isLoading = true;
    update();
    Response response = await authRepo.registration(signUpModel);
    late ResponseModel responseModel;
    if(response.statusCode == 200){
      authRepo.saveUserToken(response.body['data']["token"]);
      responseModel = ResponseModel(true, response.body['data']["token"]);
    }
    else{
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  Future<ResponseModel> login(String email, String password) async{
    authRepo.getUserToken();
    _isLoading = true;
    update();
    Response response = await authRepo.login(email, password);
    late ResponseModel responseModel;
    if(response.statusCode == 200){
      authRepo.saveUserToken(response.body['data']["token"]);
      responseModel = ResponseModel(true, response.body['data']["token"]);
    }
    else{
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  bool userLoggedIn(){
    return authRepo.usedLoggedIn();
  }

  bool clearSharedData(){
    return authRepo.clearSharedData();
  }

}