import 'package:flutter/material.dart';
import 'package:gamekrub/utils/colors.dart';
import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/widgets/mBigText.dart';
import 'package:gamekrub/widgets/mSmallText.dart';

class Specials extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const Specials({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(Dimension.height10),
        decoration: BoxDecoration(
            color: AppColors.buttonColor.withOpacity(0.6),
            borderRadius: BorderRadius.circular(Dimension.radius15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),
            ]),
        child: mSmallText(
          text: text,
          color: Colors.white,
          fontSize: Dimension.fontSize16,
        ),
      ),
    );
  }
}
