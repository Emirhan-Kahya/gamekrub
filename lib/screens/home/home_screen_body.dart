import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/models/special_deals_model.dart';
import 'package:gamekrub/screens/search_screen/search_screen.dart';
import 'package:gamekrub/utils/colors.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Slider
            Container(
              height: Dimension.screenHeight / 2,
              child: Stack(
                children: [
                  Container(
                    height: Dimension.screenHeight / 2.1,
                    child: PageView.builder(
                      pageSnapping: true,
                      //onPageChanged: _onChanged,
                      itemCount: img.length,
                      itemBuilder: (context, index) {
                        return _buildPageItem(index);
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SearchBarButton(
                      press: () {
                        Get.to(
                          () => SearchScreen(),
                          transition: Transition.rightToLeftWithFade,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            //Categories
            SizedBox(height: Dimension.height40),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryButton(
                      press: () {},
                      text: "Games",
                      img: "assets/images/games.png"),
                  CategoryButton(
                      press: () {},
                      text: "Marketplace",
                      img: "assets/images/marketplace.png"),
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
            //Special Deals
            SizedBox(height: Dimension.height40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mSmallText(text: "Special Deals", color: AppColors.textColor),
                  GestureDetector(
                    onTap: (){},
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
              height: 50,
              color: Colors.red,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: specialData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                return Container(
                  child: Row(
                    children: [
                      Text(specialData[index].name),
                    ],
                  ),
                );
              },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/" + img[index]),
          ),
        ),
      ),
    );
  }
}
