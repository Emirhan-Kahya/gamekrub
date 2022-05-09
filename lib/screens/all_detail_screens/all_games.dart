import 'package:flutter/material.dart';
import 'package:gamekrub/screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:gamekrub/utils/colors.dart';
import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/widgets/text_widgets/mBigText.dart';

class AllGamesScreen extends StatefulWidget {
  const AllGamesScreen({Key? key}) : super(key: key);

  @override
  State<AllGamesScreen> createState() => _AllGamesScreenState();
}

class _AllGamesScreenState extends State<AllGamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.bars,
            color: AppColors.iconColor,
            size: Dimension.icon24,
          ),
        ),
        title: mBigText(text: "Games", fontSize: Dimension.fontSize18,),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(()=>HomeScreen());
            },
            icon: Icon(
              FontAwesomeIcons.house,
              color: AppColors.iconColor,
              size: Dimension.icon24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColors.iconColor,
              size: Dimension.icon24,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: Dimension.width10 * 3,
              childAspectRatio: Dimension.screenWidth / Dimension.screenHeight / 0.90,
              mainAxisSpacing: Dimension.height20,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: Dimension.height20),
                child: Stack(
                  children: [
                      Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: Dimension.height150,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.cloudflare.steamstatic.com/steam/apps/730/hero_capsule.jpg?t=1604621079"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          child: Image.asset("assets/images/card_tool.png"),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: mBigText(
                          text: "Counter Strike".replaceAll('', '\u200B'),
                          color: AppColors.textColor,
                          fontSize: Dimension.fontSize14,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
