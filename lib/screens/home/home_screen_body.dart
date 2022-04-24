import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/models/special_deals_model.dart';
import 'package:gamekrub/screens/search_screen/search_screen.dart';
import 'package:gamekrub/utils/colors.dart';
import 'package:gamekrub/widgets/mBigText.dart';
import 'package:gamekrub/widgets/mSmallText.dart';
import 'package:get/get.dart';

import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/widgets/categories.dart';
import 'package:gamekrub/widgets/search_bar_button.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List img = ["banner1.png", "banner-2.jpg", "banner-3.jpg"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.only(
          top: Dimension.height40,
          left: Dimension.width20,
          right: Dimension.width20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Slider
            SearchBarButton(
              press: () {
                Get.to(
                  () => SearchScreen(),
                  transition: Transition.rightToLeftWithFade,
                );
              },
            ),
            SizedBox(height: Dimension.height20 / 2),
            Container(
              height: Dimension.width163,
              child: PageView.builder(
                pageSnapping: true,
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return _buildPageItem(index);
                },
              ),
            ),
            //Categories
            SizedBox(height: Dimension.height40),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryButton(
                      press: () {},
                      text: "Games",
                      img: "assets/images/games.png"),
                  CategoryButton(
                      press: () {},
                      text: "Marketplace",
                      img: "assets/images/marketplace2.png"),
                  CategoryButton(
                      press: () {},
                      text: "Stream",
                      img: "assets/images/stream.png"),
                  CategoryButton(
                      press: () {},
                      text: "Steam",
                      img: "assets/images/steam.png"),
                ],
              ),
            ),
            //Popular Games
            SizedBox(height: Dimension.height40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.width5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mSmallText(text: "Popular Games", color: AppColors.textColor),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.angleRight,
                      size: Dimension.icon24,
                      color: AppColors.textColor2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height20),
            Container(
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: specialData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        right: Dimension.width20, bottom: 5, top: 5),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimension.radius15 / 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, -1),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 95,
                          width: 148,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft:
                                  Radius.circular(Dimension.radius15 / 2),
                              topLeft: Radius.circular(Dimension.radius15 / 2),
                            ),
                            color: Colors.red,
                            image: DecorationImage(
                              image: NetworkImage(specialData[index].img),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: Dimension.height10,
                              left: Dimension.width10 * 1.5,
                              bottom: Dimension.height10,
                          ),
                          height: 86,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimension.radius15 / 2),
                              bottomRight:
                                  Radius.circular(Dimension.radius15 / 2),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              mSmallText(
                                text: specialData[index].name,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.bold,
                                fontSize: Dimension.fontSize30 / 2.3,
                              ),
                              mBigText(
                                text: specialData[index].description,
                                color: AppColors.textColor2,
                                fontSize: Dimension.fontSize30 / 2.6,
                              ),
                              mBigText(
                                text: "\$" + specialData[index].price.toString(),
                                color: AppColors.textColor2,
                                fontSize: Dimension.fontSize30 / 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            //Popular Streaming
            SizedBox(height: Dimension.height20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.width5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mSmallText(text: "Popular Streaming", color: AppColors.textColor),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.angleRight,
                      size: Dimension.icon24,
                      color: AppColors.textColor2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height20),
            Container(
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: specialData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        right: Dimension.width20, bottom: 5, top: 5),
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(Dimension.radius15 / 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, -1),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 95,
                          width: 148,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft:
                              Radius.circular(Dimension.radius15 / 2),
                              topLeft: Radius.circular(Dimension.radius15 / 2),
                            ),
                            color: Colors.red,
                            image: DecorationImage(
                              image: NetworkImage(specialData[index].img),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: Dimension.height10,
                            left: Dimension.width10 * 1.5,
                            bottom: Dimension.height10,
                          ),
                          height: 86,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimension.radius15 / 2),
                              bottomRight:
                              Radius.circular(Dimension.radius15 / 2),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              mSmallText(
                                text: specialData[index].name,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.bold,
                                fontSize: Dimension.fontSize30 / 2.3,
                              ),
                              mBigText(
                                text: specialData[index].description,
                                color: AppColors.textColor2,
                                fontSize: Dimension.fontSize30 / 2.6,
                              ),
                              mBigText(
                                text: "\$" + specialData[index].price.toString(),
                                color: AppColors.textColor2,
                                fontSize: Dimension.fontSize30 / 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            //Top Selling Games
            SizedBox(height: Dimension.height20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.width5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mSmallText(text: "Top Selling Games", color: AppColors.textColor),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.angleRight,
                      size: Dimension.icon24,
                      color: AppColors.textColor2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height20),
            Container(
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: specialData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        right: Dimension.width20, bottom: 5, top: 5),
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(Dimension.radius15 / 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, -1),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 95,
                          width: 148,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft:
                              Radius.circular(Dimension.radius15 / 2),
                              topLeft: Radius.circular(Dimension.radius15 / 2),
                            ),
                            color: Colors.red,
                            image: DecorationImage(
                              image: NetworkImage(specialData[index].img),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: Dimension.height10,
                            left: Dimension.width10 * 1.5,
                            bottom: Dimension.height10,
                          ),
                          height: 86,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimension.radius15 / 2),
                              bottomRight:
                              Radius.circular(Dimension.radius15 / 2),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              mSmallText(
                                text: specialData[index].name,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.bold,
                                fontSize: Dimension.fontSize30 / 2.3,
                              ),
                              mBigText(
                                text: specialData[index].description,
                                color: AppColors.textColor2,
                                fontSize: Dimension.fontSize30 / 2.6,
                              ),
                              mBigText(
                                text: "\$" + specialData[index].price.toString(),
                                color: AppColors.textColor2,
                                fontSize: Dimension.fontSize30 / 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: Dimension.width5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/" + img[index]),
          ),
        ),
      ),
    );
  }
}
