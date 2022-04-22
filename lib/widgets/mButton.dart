import 'package:flutter/material.dart';
import 'package:gamekrub/widgets/mBigText.dart';

class mButton extends StatelessWidget {
  final VoidCallback press;
  final double height, width, textSize, radius;
  Color? backgroundColor, textColor;
  final String text;
  final bool isPressed;
  mButton({
    Key? key,
    required this.press,
    this.height = 50,
    this.width = 100,
    this.backgroundColor = const Color(0xFF191E3A),
    this.textColor = Colors.white,
    required this.text,
    this.textSize = 24,
    this.radius = 16,
    this.isPressed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          gradient: LinearGradient(
            colors: [
              Color(0xFF191E3A).withOpacity(0.8),
              Color(0xFF191E3A)
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: mBigText(text: text, color: textColor, fontSize: textSize),
        ),
      ),
    );
  }
}
