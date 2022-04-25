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
            top: Dimension.height40, bottom: Dimension.height20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Search
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
              child: SearchBarButton(
                press: () {
                  Get.to(
                    () => SearchScreen(),
                    transition: Transition.rightToLeftWithFade,
                  );
                },
              ),
            ),
            SizedBox(height: Dimension.height20 / 1.5),
            //Slider
            Container(
              height: Dimension.width150,
              margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
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
              margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
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
              margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
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
              height: 110,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: specialData.length,
                itemBuilder: (context, index) {
                  return _buildListViewItem(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListViewItem(int index) {
    return Container(
                  margin: EdgeInsets.only(left: Dimension.width20, top: Dimension.height10, bottom: Dimension.height10),
                  width: 340,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10,
                        child: Container(
                          height: 100,
                          width: 180,
                          padding: EdgeInsets.symmetric(horizontal: Dimension.width20, vertical: Dimension.height10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.only(
                                  topRight: Radius.circular(Dimension.radius15),
                                  bottomRight: Radius.circular(Dimension.radius15),
                                ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              mBigText(text: specialData[index].name, fontSize: 13),
                              SizedBox(height: Dimension.height5),
                              mBigText(text: specialData[index].description, fontSize: 12, color: AppColors.textColor.withOpacity(0.7)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.only(
                            topLeft: Radius.circular(Dimension.radius15),
                            bottomLeft: Radius.circular(Dimension.radius15),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.only(
                            topLeft: Radius.circular(Dimension.radius15),
                            bottomLeft: Radius.circular(Dimension.radius15),
                          ),
                          child: Image(
                            image: NetworkImage(specialData[index].img),
                            width: 160,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
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
