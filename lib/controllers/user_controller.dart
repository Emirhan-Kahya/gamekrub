import 'package:gamekrub/models/response_model.dart';
import 'package:get/get.dart';

import 'package:gamekrub/data/repository/user_repo.dart';
import 'package:gamekrub/models/user_model.dart';

class UserController extends GetxController implements GetxService {
  final UserRepo userRepo;

  UserController({required this.userRepo});

  bool _isloading = false;
  UserModel? _userModel;

  bool get isLoading => _isloading;
  UserModel? get userModel => _userModel;

  Future<ResponseModel> getUserInfo() async {
    Response response = await userRepo.getUserInfo();
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      _userModel =UserModel.fromJson(response.body);
      _isloading = true;
      responseModel = ResponseModel(true, "Successfully");
    }else{
      responseModel = ResponseModel(false, response.statusText!);
    }
    update();
    return responseModel;
  }
}
