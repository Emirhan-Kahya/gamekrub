import 'package:flutter/material.dart';

class mBigText extends StatelessWidget {
  Color? color;
  final String text;
  double fontSize;
  int? maxLines;
  TextOverflow overflow;

  mBigText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF3B3F5C),
    this.fontSize = 24,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
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
