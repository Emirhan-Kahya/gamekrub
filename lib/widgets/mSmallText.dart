import 'package:flutter/material.dart';

class mSmallText extends StatelessWidget {
  Color? color;
  final String text;
  double? fontSize, height, letterSpacing;
  FontWeight? fontWeight;

  mSmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xFFA0AAB3),
    this.fontSize = 14,
    this.height = 1.2,
    this.letterSpacing = 0.2,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight,
        fontFamily: 'Quicksand',
        letterSpacing: letterSpacing,
      ),
    );
  }
}
