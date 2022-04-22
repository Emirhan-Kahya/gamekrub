import 'package:flutter/material.dart';
import 'package:gamekrub/utils/colors.dart';

class mBottomBarItem extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final VoidCallback press;
  mBottomBarItem({
    Key? key,
    required this.icon,
    this.isSelected = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: isSelected ? 35 : 30,
        height: isSelected ? 35 : 30,
        child: Image.asset(icon, color: isSelected ? AppColors.buttonBackgroundColor : Colors.grey[500]),
      ),
    );
  }
}
