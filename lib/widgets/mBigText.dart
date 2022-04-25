import 'package:flutter/material.dart';

class mBigText extends StatelessWidget {
  Color? color;
  final String text;
  double fontSize;
  TextOverflow overflow;

  mBigText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF3B3F5C),
    this.fontSize = 24,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        fontFamily: 'Quicksand'
      ),
    );
  }
}
