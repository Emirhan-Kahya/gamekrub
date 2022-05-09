import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamekrub/widgets/others_sign_in.dart';
import 'package:gamekrub/widgets/text_widgets/mSmallText.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:gamekrub/utils/colors.dart';
import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/widgets/text_widgets/mBigText.dart';
import '../home/home_screen.dart';

class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({Key? key}) : super(key: key);

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
        title: mBigText(
          text: "Marketplace",
          fontSize: Dimension.fontSize18,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => HomeScreen());
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
      body: SizedBox(
        width: Dimension.screenWidth,
        height: Dimension.screenHeight,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: Dimension.height40),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: Dimension.width20),
                        margin:
                            EdgeInsets.symmetric(horizontal: Dimension.width10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.buttonColor),
                          borderRadius:
                              BorderRadius.circular(Dimension.radius15),
                        ),
                        child: Center(
                          child: mSmallText(
                            text: "Game Name",
                            color: AppColors.textColor,
                          ),
                        ),
                      );
                    }),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return marketplaceBody(index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget marketplaceBody(int index) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimension.width10,
        right: Dimension.width10,
        bottom: Dimension.height10,
        top: Dimension.height20,
      ),
      height: Dimension.height150,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: Dimension.height20,
              left: Dimension.width20,
              right: Dimension.width10,
              bottom: Dimension.height20,
            ),
            width: Dimension.width150,
            height: Dimension.height40 * 3,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(Dimension.radius15),
            ),
          ),
          Expanded(
            child: Container(
              height: Dimension.height40 * 3,
              margin: EdgeInsets.only(right: Dimension.width10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mBigText(text: "Item Name", fontSize: Dimension.fontSize18),
                  SizedBox(height: Dimension.height5),
                  mBigText(
                    text: "description".replaceAll('', '\u200B'),
                    fontSize: Dimension.fontSize14,
                    maxLines: 4,
                    color: AppColors.textColor2,
                  ),
                  Expanded(child: Container()),
                  Container(height: 1, color: Colors.black12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      mBigText(text: "\$150.0", fontSize: Dimension.fontSize18),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
