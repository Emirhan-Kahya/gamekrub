import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/controllers/auth_controller.dart';
import 'package:gamekrub/models/sign_up_model.dart';
import 'package:gamekrub/screens/home/home_screen.dart';
import 'package:get/get.dart';

//utils
import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/utils/colors.dart';

//widgets
import 'package:gamekrub/widgets/text_widgets/mBigText.dart';
import 'package:gamekrub/widgets/mButton.dart';
import 'package:gamekrub/widgets/text_widgets/mSmallText.dart';
import 'package:gamekrub/widgets/mTextField.dart';
import 'package:gamekrub/widgets/others_sign_in.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var confirmPasswordController = TextEditingController();

    void _register(AuthController authController){
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      String confirmPassword = confirmPasswordController.text.trim();
      String name = nameController.text.trim();
      if(email.isEmpty){
        print("Email can not be empty");
      }else if(!GetUtils.isEmail(email)){
        print("Type in a valid email address");
      }else if(name.isEmpty){
        print("Name can not be empty");
      } else if(password.isEmpty){
        print("Password can not be empty");
      }else if(confirmPassword.isEmpty) {
        print("Confirm Password can not be empty");
      }else if(password != confirmPassword) {
        print("Password and Confirm Password don\'t match");
      }else{
        SignUpModel signUpModel = SignUpModel(name: name, email: email, password: password, confirmPassword: confirmPassword);
        authController.registration(signUpModel).then((status){
          if(status.isSuccess){
            Get.to(()=>HomeScreen());
          }
          else{
            print(status.message);
          }
        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<AuthController>(
        builder: (authController) {
          return !authController.isLoading ? SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(
                top: Dimension.height40 * 1.5,
                right: Dimension.width20,
                left: Dimension.width20,
                bottom: Dimension.height40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Login text
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      mBigText(text: "Register", fontSize: Dimension.fontSize30),
                    ],
                  ),
                  SizedBox(height: Dimension.height40),
                  //Other login methods
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: OtherSignMethods(
                              press: () {},
                              text: "Facebook",
                              icons: FontAwesomeIcons.facebookF,
                              height: Dimension.height100 / 1.5,
                              color: AppColors.buttonColor2,
                            ),
                          ),
                          SizedBox(width: Dimension.width10),
                          Expanded(
                            child: OtherSignMethods(
                              press: () {},
                              text: "Gmail",
                              icons: FontAwesomeIcons.google,
                              height: Dimension.height100 / 1.5,
                              color: AppColors.gmailColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Dimension.height20),
                      mSmallText(text: "or register with email"),
                    ],
                  ),
                  SizedBox(height: Dimension.height20),
                  //TextFields
                  Column(
                    children: [
                      //Email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mBigText(text: "Email", fontSize: Dimension.fontSize18),
                          SizedBox(height: Dimension.height10),
                          AppTextField(
                            textEditingController: emailController,
                            text: "example@mail.com",
                            icon: FontAwesomeIcons.solidEnvelope,
                          ),
                        ],
                      ),
                      SizedBox(height: Dimension.height20),
                      //Name & Surname
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mBigText(text: "Name & Surname", fontSize: Dimension.fontSize18),
                          SizedBox(height: Dimension.height10),
                          AppTextField(
                            textEditingController: nameController,
                            text: "Name",
                            icon: FontAwesomeIcons.solidUser,
                          ),
                        ],
                      ),
                      SizedBox(height: Dimension.height20),
                      //Password
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mBigText(text: "Password", fontSize: Dimension.fontSize18),
                          SizedBox(height: Dimension.height10),
                          AppTextField(
                            textEditingController: passwordController,
                            text: "*******",
                            isObscure: true,
                            icon: FontAwesomeIcons.lock,
                          ),
                        ],
                      ),
                      SizedBox(height: Dimension.height20),
                      //Confirm Password
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mBigText(text: "Confirm Password", fontSize: Dimension.fontSize18),
                          SizedBox(height: Dimension.height10),
                          AppTextField(
                            textEditingController: confirmPasswordController,
                            text: "*******",
                            isObscure: true,
                            icon: FontAwesomeIcons.lock,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: Dimension.height40),
                  GestureDetector(
                    onTap: (){
                      _register(authController);
                    },
                    child: Container(
                      height: Dimension.height20 * 3,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: AppColors.buttonColor2,
                        borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
                      ),
                      child: Center(
                        child: mBigText(text: "Register", color: Colors.white, fontSize: Dimension.fontSize18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Do you have an account already? ",
                        style: TextStyle(color: AppColors.textColor),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                            text: "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.buttonColor2,
                            ),
                          ),
                        ]
                    ),
                  ),
                ],
              ),
            ),
          ) : Center(child: CircularProgressIndicator());
        }
      ),
    );
  }
}
