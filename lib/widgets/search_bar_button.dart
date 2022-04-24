import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'mSmallText.dart';

class SearchBarButton extends StatelessWidget {
  final VoidCallback press;
  const SearchBarButton({Key? key, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: Dimension.screenWidth,
        height: Dimension.height40,
        margin: EdgeInsets.symmetric(horizontal: Dimension.width40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFe8e8e8),
                blurRadius: 3.0,
                offset: Offset(0, 3),
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-3, 0),
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(3, 0),
              ),
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.magnifyingGlass, size: Dimension.icon24, color: AppColors.textColor2),
            SizedBox(width: Dimension.width10),
            mSmallText(text: "Search", letterSpacing: 0, fontWeight: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
