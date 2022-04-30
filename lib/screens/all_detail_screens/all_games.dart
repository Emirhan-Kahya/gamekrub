import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/utils/colors.dart';
import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/widgets/mBigText.dart';

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
          onPressed: (){},
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
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2 / 3
          ),
          shrinkWrap: true,
          itemCount: 12,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius15),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://cdn.cloudflare.steamstatic.com/steam/apps/730/library_600x900.jpg?t=1585695935"),
                )
              ),
              margin: EdgeInsets.only(top: Dimension.height20, left: Dimension.width10, right: Dimension.width10),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 15,
                    child: Container(
                      alignment: Alignment.topCenter,
                      height: 5,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
