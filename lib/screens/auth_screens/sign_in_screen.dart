import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

//screen
import 'package:gamekrub/screens/auth_screens/sign_up_screen.dart';
import 'package:gamekrub/screens/home/home_screen.dart';

//controllers
import 'package:gamekrub/controllers/auth_controller.dart';

//utils
import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/utils/colors.dart';

//widgets
import 'package:gamekrub/widgets/text_widgets/mBigText.dart';
import 'package:gamekrub/widgets/text_widgets/mSmallText.dart';
import 'package:gamekrub/widgets/mTextField.dart';
import 'package:gamekrub/widgets/others_sign_in.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    print(emailController.text.trim());
    print(emailController.text);
    print(emailController);

    void _login(AuthController authController){
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if(email.isEmpty){
        print("Email can not be empty");
      }else if(!GetUtils.isEmail(email)){
        print("Type in a valid email address");
      }else if(password.isEmpty){
        print("Password can not be empty");
      }else{
        authController.login(email, password).then((status){
          if(status.isSuccess){
            Get.to(()=>HomeScreen());
          }else{
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
                          mBigText(text: "Login", fontSize: Dimension.fontSize30),
                          SizedBox(height: Dimension.height10),
                          mSmallText(text: "Access account", fontSize: Dimension.fontSize16),
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
                          mSmallText(text: "or login with email"),
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
                        ],
                      ),
                      SizedBox(height: Dimension.height40),
                      GestureDetector(
                        onTap: (){
                          _login(authController);
                        },
                        child: Container(
                          height: Dimension.height20 * 3,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: AppColors.buttonColor2,
                            borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
                          ),
                          child: Center(
                            child: mBigText(text: "Login", color: Colors.white, fontSize: Dimension.fontSize18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimension.height10,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Don\'t have an account? ",
                          style: TextStyle(color: AppColors.textColor),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpScreen(), transition: Transition.fade),
                              text: "Register",
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
