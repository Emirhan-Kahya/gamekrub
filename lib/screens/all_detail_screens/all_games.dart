import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/utils/colors.dart';
import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/widgets/text_widgets/mBigText.dart';
import 'package:gamekrub/widgets/text_widgets/mSmallText.dart';

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
          ),
        ),
        title: mBigText(text: "Games"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.house,
              color: AppColors.iconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColors.iconColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: Dimension.height20,
            left: Dimension.width20,
            right: Dimension.width20),
        child: GridView.builder(
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: Dimension.width10 * 2,
              childAspectRatio: 150 / 270,
              mainAxisSpacing: Dimension.height10 * 3,
            ),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.cloudflare.steamstatic.com/steam/apps/730/hero_capsule.jpg?t=1604621079"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          child: Image.asset("assets/images/card_tool.png"),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimension.height10),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        mBigText(
                          text: "Counter Strikedsadsadasdsadsadsa".replaceAll('', '\u200B'),
                          color: AppColors.textColor,
                          fontSize: Dimension.fontSize14,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
