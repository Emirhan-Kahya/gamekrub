import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamekrub/utils/dimension.dart';

import 'package:gamekrub/widgets/search_bar.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    List img = ["banner1.png", "banner-2.jpg", "banner-3.jpg"];
    return Container(
      margin: EdgeInsets.only(
          top: Dimension.height40,
          left: Dimension.width20,
          right: Dimension.width20),
      child: Column(
        children: [
          mSearchBar(press: () {}),
          SizedBox(height: Dimension.width20),
          Container(
            height: 200,
            child: PageView.builder(
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/" + img[index]),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom:5,
                        left:0,
                        right:0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Wrap(
                                children: List.generate(
                              img.length,
                              (i) => Container(
                                width: i == index ? 18 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
