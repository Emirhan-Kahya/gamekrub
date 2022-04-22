import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//utils
import 'package:gamekrub/utils/dimension.dart';
//widgets
import 'package:gamekrub/widgets/mBigText.dart';
import 'package:gamekrub/widgets/mButton.dart';
import 'package:gamekrub/widgets/mSmallText.dart';
import 'package:gamekrub/widgets/mTextField.dart';
import 'package:gamekrub/widgets/others_sign_in.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
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
                  mBigText(text: "Login", fontSize: Dimension.fontSize30),
                  SizedBox(height: Dimension.height10),
                  mSmallText(text: "Access account", fontSize: 16),
                ],
              ),
              SizedBox(height: Dimension.height40),
              //Other login methods
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OtherSignMethods(
                        press: () {},
                        icons: FontAwesomeIcons.facebookF,
                        width: Dimension.width100 * 1.7,
                        height: Dimension.height100 / 1.5,
                      ),
                      OtherSignMethods(
                        press: () {},
                        icons: FontAwesomeIcons.google,
                        width: Dimension.width100 * 1.7,
                        height: Dimension.height100 / 1.5,
                      ),
                    ],
                  ),
                  SizedBox(height: Dimension.height20),
                  mSmallText(text: "or Login with email"),
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
                          isObscure: true),
                    ],
                  ),
                ],
              ),
              SizedBox(height: Dimension.height40),
              mButton(
                press: () {},
                text: "Sign In",
                width: double.maxFinite,
                height: 65,
                textColor: Colors.white,
                textSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
