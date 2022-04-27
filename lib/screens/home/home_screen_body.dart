import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/models/popular_games_model.dart';
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
        padding: EdgeInsets.only(top: Dimension.height40),
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
            SizedBox(height: Dimension.height20),
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
                      size: Dimension.icon18,
                      color: AppColors.textColor2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height5),
            Container(
              height: Dimension.height100 * 2 + Dimension.height10 * 3,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: popularGamesList.length,
                itemBuilder: (context, index) {
                  PopularGamesModel popularGames = popularGamesList[index];
                  return _buildListViewItem(img: popularGames.img.toString(), name: popularGames.name.toString(), description: popularGames.description.toString(), price: popularGames.price.toString());
                },
              ),
            ),
            //Popular Games
            SizedBox(height: Dimension.height40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mSmallText(text: "Popular Streaming", color: AppColors.textColor),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.angleRight,
                      size: Dimension.icon18,
                      color: AppColors.textColor2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height5),
            Container(
              height: Dimension.height100 * 2 + Dimension.height10 * 3,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: popularGamesList.length,
                itemBuilder: (context, index) {
                  PopularGamesModel popularGames = popularGamesList[index];
                  return _buildListViewItem(img: popularGames.img.toString(), name: popularGames.name.toString(), description: popularGames.description.toString(), price: popularGames.price.toString());
                },
              ),
            ),
            //Popular Games
            SizedBox(height: Dimension.height40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mSmallText(text: "Marketplace", color: AppColors.textColor),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.angleRight,
                      size: Dimension.icon18,
                      color: AppColors.textColor2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height5),
            Container(
              height: Dimension.height100 * 2 + Dimension.height10 * 3,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: popularGamesList.length,
                itemBuilder: (context, index) {
                  PopularGamesModel popularGames = popularGamesList[index];
                  return _buildListViewItem(img: popularGames.img.toString(), name: popularGames.name.toString(), description: popularGames.description.toString(), price: popularGames.price.toString());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListViewItem({required String name, required String description, required String price, required String img}) {
    return Container(
      margin: EdgeInsets.only(top: Dimension.height10, bottom: Dimension.height10, left: Dimension.width20),
      width: Dimension.width100 * 1.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.radius15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ]
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: Dimension.height100,
              width: Dimension.width100 * 1.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(Dimension.radius15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name),
                        SizedBox(height: Dimension.height5 / 3),
                        Text(description),
                      ],
                    ),
                    Positioned(
                      bottom: 5,
                      left: 0,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 1, color: Colors.black12,),
                          SizedBox(height: Dimension.height5),
                          Text("\$ " + price),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimension.radius15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(Dimension.radius15)),
              child: Image(
                height: Dimension.height100 + Dimension.height10,
                width: Dimension.width100 * 2,
                image: NetworkImage(img),
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
