import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/utils/colors.dart';
import 'package:get/get.dart';

import 'package:gamekrub/utils/dimension.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: Dimension.height40,
          left: Dimension.width20,
          right: Dimension.width20,
        ),
        child: Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(Dimension.radius30),
              onTap: (){
                Get.back();
              },
              child: Icon(FontAwesomeIcons.angleLeft, color: AppColors.iconColor,),
            ),
            SizedBox(width: Dimension.width10),
            Expanded(
              child: Container(
                height: Dimension.height50,
                padding: EdgeInsets.symmetric(horizontal: Dimension.width20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius30),
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.5), width: 0.5)),
                child: TextField(
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black45,
                    ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(width: Dimension.width10),
            GestureDetector(
              onTap: (){},
              child: Icon(FontAwesomeIcons.magnifyingGlass, color: AppColors.iconColor,),
            ),
          ],
        ),
      ),
    );
  }
}
