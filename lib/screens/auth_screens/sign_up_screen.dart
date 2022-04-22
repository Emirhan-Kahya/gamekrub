import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/screens/auth_screens/sign_in_screen.dart';
import 'package:get/get.dart';

//utils
import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/utils/colors.dart';

//widgets
import 'package:gamekrub/widgets/mBigText.dart';
import 'package:gamekrub/widgets/mButton.dart';
import 'package:gamekrub/widgets/mSmallText.dart';
import 'package:gamekrub/widgets/mTextField.dart';
import 'package:gamekrub/widgets/others_sign_in.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFFF1F2F3),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(
              top: Dimension.height40 * 1.5,
              right: Dimension.width20,
              left: Dimension.width20,
              bottom: Dimension.height40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Login text
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mBigText(text: "Sign Up", fontSize: Dimension.fontSize30),
                  SizedBox(height: Dimension.height10),
                  mSmallText(text: "Create an account", fontSize: 16),
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
                          icons: FontAwesomeIcons.facebookF,
                          height: Dimension.height100 / 1.5,
                        ),
                      ),
                      SizedBox(width: Dimension.width10),
                      Expanded(
                        child: OtherSignMethods(
                          press: () {},
                          icons: FontAwesomeIcons.google,
                          height: Dimension.height100 / 1.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimension.height20),
                  mSmallText(text: "or Sign up with email"),
                ],
              ),
              SizedBox(height: Dimension.height20),
              //TextFields
              Column(
                children: [
                  //Username
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mBigText(text: "Username", fontSize: 18),
                      SizedBox(height: Dimension.height10),
                      AppTextField(
                          textEditingController: usernameController,
                          text: "User"),
                    ],
                  ),
                  SizedBox(height: Dimension.height20),
                  //Email
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mBigText(text: "Email", fontSize: 18),
                      SizedBox(height: Dimension.height10),
                      AppTextField(
                          textEditingController: emailController,
                          text: "example@mail.com"),
                    ],
                  ),
                  SizedBox(height: Dimension.height20),
                  //Password
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mBigText(text: "Password", fontSize: 18),
                      SizedBox(height: Dimension.height10),
                      AppTextField(
                          textEditingController: passwordController,
                          text: "*******",
                          isObscure: true,
                      ),
                    ],
                  ),
                  SizedBox(height: Dimension.height20),
                  //Confirm Password
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mBigText(text: "Confirm Password", fontSize: 18),
                      SizedBox(height: Dimension.height10),
                      AppTextField(
                        textEditingController: confirmPasswordController,
                        text: "*******",
                        isObscure: true,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: Dimension.height40),
              mButton(
                press: () {},
                text: "Sign Up",
                width: double.maxFinite,
                height: 65,
                textColor: Colors.white,
                textSize: 20,
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              RichText(
                text: TextSpan(
                    text: "Have an account? ",
                    style: TextStyle(color: AppColors.textColor2),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignInScreen(), transition: Transition.fade),
                        text: "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.buttonColor,
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
