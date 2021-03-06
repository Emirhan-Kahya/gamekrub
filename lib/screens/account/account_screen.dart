import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/controllers/auth_controller.dart';
import 'package:gamekrub/controllers/user_controller.dart';
import 'package:gamekrub/routes/route_helper.dart';
import 'package:get/get.dart';

import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/widgets/account_widgets/account_widget.dart';
import 'package:gamekrub/widgets/text_widgets/mBigText.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _userLoggedIn = Get.find<AuthController>().userLoggedIn();
    if (_userLoggedIn) {
      Get.find<UserController>().getUserInfo();
    }
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: GetBuilder<UserController>(builder: (userController) {
        return _userLoggedIn ? (userController.isLoading
            ? SingleChildScrollView(
                child: SizedBox(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        left: 0,
                        child: Container(
                          height: Dimension.height100 * 3,
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimension.width20),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/card_background.jpg"),
                              )),
                          child: GestureDetector(
                            onTap: () {
                              print("Pressed");
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: Dimension.height20 * 3,
                                  height: Dimension.height20 * 3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius30),
                                  ),
                                  child: Icon(FontAwesomeIcons.solidUser,
                                      color: Colors.grey.shade400,
                                      size: Dimension.icon16 * 2),
                                ),
                                SizedBox(width: Dimension.width10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    mBigText(
                                      text: userController.userModel!.name,
                                      fontSize: Dimension.fontSize18,
                                      color: Colors.white,
                                    ),
                                    mBigText(
                                      text: userController.userModel!.email,
                                      fontSize: Dimension.fontSize14,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Icon(
                                  FontAwesomeIcons.angleRight,
                                  color: Colors.white,
                                  size: Dimension.icon18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: Dimension.height100 * 3 - 20,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(Dimension.radius15),
                            ),
                          ),
                          child: Column(
                            children: [
                              AccountButton(
                                press: () {
                                  showModalBottomSheet(
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(
                                              Dimension.radius15)),
                                    ),
                                    builder: (context) {
                                      return Wrap(
                                        children: [
                                          ListTile(
                                            leading: Icon(
                                                FontAwesomeIcons.moneyBill),
                                            title: Text("Withdraw Wallet"),
                                          ),
                                          ListTile(
                                            leading:
                                                Icon(FontAwesomeIcons.plus),
                                            title: Text("Recharge Wallet"),
                                          ),
                                          ListTile(
                                            leading: Icon(
                                                FontAwesomeIcons.rectangleList),
                                            title: Text("Wallet History"),
                                          ),
                                          ListTile(
                                            leading: Icon(FontAwesomeIcons
                                                .buildingColumns),
                                            title: Text("Bank Accounts"),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                text: "My Wallet",
                                iconPrefix: FontAwesomeIcons.wallet,
                                iconSuffix: FontAwesomeIcons.angleDown,
                              ),
                              SizedBox(height: Dimension.height10),
                              AccountButton(
                                  press: () {},
                                  text: "My Orders",
                                  iconPrefix: FontAwesomeIcons.bagShopping),
                              SizedBox(height: Dimension.height10),
                              AccountButton(
                                press: () {
                                  showModalBottomSheet(
                                      context: context,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(
                                                Dimension.radius15)),
                                      ),
                                      builder: (context) {
                                        return Wrap(
                                          children: [
                                            ListTile(
                                              leading: Icon(
                                                  FontAwesomeIcons.moneyBill),
                                              title: Text("My Ads"),
                                            ),
                                            ListTile(
                                              leading:
                                                  Icon(FontAwesomeIcons.plus),
                                              title: Text("New Ad"),
                                            ),
                                            ListTile(
                                              leading: Icon(FontAwesomeIcons
                                                  .rectangleList),
                                              title: Text("My Sold Ads"),
                                            ),
                                          ],
                                        );
                                      });
                                },
                                text: "My Sells",
                                iconPrefix: FontAwesomeIcons.wandSparkles,
                                iconSuffix: FontAwesomeIcons.angleDown,
                              ),
                              SizedBox(height: Dimension.height10),
                              AccountButton(
                                  press: () {},
                                  text: "My Favorites",
                                  iconPrefix: FontAwesomeIcons.solidHeart),
                              SizedBox(height: Dimension.height10),
                              AccountButton(
                                  press: () {},
                                  text: "Notifications",
                                  iconPrefix: FontAwesomeIcons.solidBell),
                              SizedBox(height: Dimension.height10),
                              AccountButton(
                                  press: () {},
                                  text: "Store Management",
                                  iconPrefix: FontAwesomeIcons.store),
                              SizedBox(height: Dimension.height10),
                              AccountButton(
                                press: () {},
                                text: "Personal Informations & Settings",
                                iconPrefix: FontAwesomeIcons.gear,
                                iconSuffix: FontAwesomeIcons.angleDown,
                              ),
                              SizedBox(height: Dimension.height10),
                              AccountButton(
                                press: () {
                                  if(Get.find<AuthController>().userLoggedIn()){
                                    Get.find<AuthController>().clearSharedData();
                                    Get.offNamed(RouteHelper.getInitial());
                                  }
                                },
                                text: "Logout",
                                iconPrefix: FontAwesomeIcons.arrowRightFromBracket,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Center(child: CircularProgressIndicator())) : SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  left: 0,
                  child: Container(
                    height: Dimension.height100 * 3,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimension.width20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/card_background.jpg"),
                        )),
                    child: GestureDetector(
                      onTap: () {
                          Get.offNamed(RouteHelper.getSignInPage());
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimension.height20 * 3,
                            height: Dimension.height20 * 3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  Dimension.radius30),
                            ),
                            child: Icon(FontAwesomeIcons.solidUser,
                                color: Colors.grey.shade400,
                                size: Dimension.icon16 * 2),
                          ),
                          SizedBox(width: Dimension.width10),
                          mBigText(
                            text: "Sign In/Sign Up",
                            fontSize: Dimension.fontSize16,
                            color: Colors.white,
                          ),
                          Expanded(child: Container()),
                          Icon(
                            FontAwesomeIcons.angleRight,
                            color: Colors.white,
                            size: Dimension.icon18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: Dimension.height100 * 3 - 20,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(Dimension.radius15),
                      ),
                    ),
                    child: Column(
                      children: [
                        AccountButton(
                          press: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(
                                        Dimension.radius15)),
                              ),
                              builder: (context) {
                                return Wrap(
                                  children: [
                                    ListTile(
                                      leading: Icon(
                                          FontAwesomeIcons.moneyBill),
                                      title: Text("Withdraw Wallet"),
                                    ),
                                    ListTile(
                                      leading:
                                      Icon(FontAwesomeIcons.plus),
                                      title: Text("Recharge Wallet"),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                          FontAwesomeIcons.rectangleList),
                                      title: Text("Wallet History"),
                                    ),
                                    ListTile(
                                      leading: Icon(FontAwesomeIcons
                                          .buildingColumns),
                                      title: Text("Bank Accounts"),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          text: "My Wallet",
                          iconPrefix: FontAwesomeIcons.wallet,
                          iconSuffix: FontAwesomeIcons.angleDown,
                        ),
                        SizedBox(height: Dimension.height10),
                        AccountButton(
                            press: () {},
                            text: "My Orders",
                            iconPrefix: FontAwesomeIcons.bagShopping),
                        SizedBox(height: Dimension.height10),
                        AccountButton(
                          press: () {
                            showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(
                                          Dimension.radius15)),
                                ),
                                builder: (context) {
                                  return Wrap(
                                    children: [
                                      ListTile(
                                        leading: Icon(
                                            FontAwesomeIcons.moneyBill),
                                        title: Text("My Ads"),
                                      ),
                                      ListTile(
                                        leading:
                                        Icon(FontAwesomeIcons.plus),
                                        title: Text("New Ad"),
                                      ),
                                      ListTile(
                                        leading: Icon(FontAwesomeIcons
                                            .rectangleList),
                                        title: Text("My Sold Ads"),
                                      ),
                                    ],
                                  );
                                });
                          },
                          text: "My Sells",
                          iconPrefix: FontAwesomeIcons.wandSparkles,
                          iconSuffix: FontAwesomeIcons.angleDown,
                        ),
                        SizedBox(height: Dimension.height10),
                        AccountButton(
                            press: () {},
                            text: "My Favorites",
                            iconPrefix: FontAwesomeIcons.solidHeart),
                        SizedBox(height: Dimension.height10),
                        AccountButton(
                            press: () {},
                            text: "Notifications",
                            iconPrefix: FontAwesomeIcons.solidBell),
                        SizedBox(height: Dimension.height10),
                        AccountButton(
                            press: () {},
                            text: "Store Management",
                            iconPrefix: FontAwesomeIcons.store),
                        SizedBox(height: Dimension.height10),
                        AccountButton(
                          press: () {},
                          text: "Personal Informations & Settings",
                          iconPrefix: FontAwesomeIcons.gear,
                          iconSuffix: FontAwesomeIcons.angleDown,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
