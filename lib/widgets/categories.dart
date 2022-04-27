import 'package:flutter/material.dart';

import '../utils/dimension.dart';
import 'mSmallText.dart';

class CategoryButton extends StatelessWidget {
  final VoidCallback press;
  final String text, img;
  const CategoryButton({Key? key, required this.press, required this.text, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(Dimension.radius15),
            onTap: press,
            child: Container(
              width: Dimension.width40,
              height: Dimension.height40,
              margin: EdgeInsets.all(Dimension.height5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      img
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: Dimension.height5),
          mSmallText(text: text, fontWeight: FontWeight.w600,fontSize: Dimension.fontSize12),
        ],
      ),
    );
  }
}
