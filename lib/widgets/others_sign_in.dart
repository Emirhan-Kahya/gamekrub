import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/utils/colors.dart';
import 'package:gamekrub/utils/dimension.dart';
import 'package:gamekrub/widgets/text_widgets/mSmallText.dart';


class OtherSignMethods extends StatelessWidget {
  final VoidCallback press;
  final IconData icons;
  Color? color;
  final String text;
  final double height, width, iconSize;

  OtherSignMethods({
    Key? key,
    required this.press,
    required this.icons,
    this.color = const Color(0xFF3B3F5C),
    this.height = 50,
    this.width = 100,
    this.iconSize = 16,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
          border: Border.all(width: 1, color: AppColors.textColor2)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons,
              size: iconSize,
              color: color,
            ),
            SizedBox(width: Dimension.width5),
            mSmallText(text: text, color: color, fontSize: Dimension.fontSize16,),
          ],
        ),
      ),
    );
  }
}
