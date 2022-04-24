import 'package:flutter/material.dart';
import 'package:gamekrub/utils/dimension.dart';

class Dots extends StatelessWidget {
  final int dotLength, currentIndex;
  const Dots({Key? key, required this.dotLength, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      children: List.generate(
            dotLength,
            (i) {
          return Container(
            width: i == currentIndex ? 18 : 8,
            height: 8,
            margin: EdgeInsets.only(
                right: Dimension.width5 / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
