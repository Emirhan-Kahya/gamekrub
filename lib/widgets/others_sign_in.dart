import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class OtherSignMethods extends StatelessWidget {
  final VoidCallback press;
  final IconData icons;
  Color? backgroundColor, iconColor;
  final double height, width, iconSize;

  OtherSignMethods({
    Key? key,
    required this.press,
    required this.icons,
    this.iconColor = const Color(0xFFAEBED9),
    this.backgroundColor = const Color(0xFFE0E6ED),
    this.height = 50,
    this.width = 100,
    this.iconSize = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
        ),
        child: Icon(
          icons,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
