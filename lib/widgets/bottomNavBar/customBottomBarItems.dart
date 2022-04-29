import 'package:flutter/material.dart';
import 'package:gamekrub/utils/colors.dart';
import 'package:gamekrub/utils/dimension.dart';

class mBottomBarItem extends StatelessWidget {
  final IconData icon;
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
        width: MediaQuery.of(context).size.width / 4,
        height: 50,
        decoration: isSelected ? BoxDecoration(
            border: Border(
              top: BorderSide(width: 2, color: AppColors.iconColor),
            ),
        ) : BoxDecoration(),
        child: Icon(icon, color: isSelected ? AppColors.iconColor : Colors.grey.shade300),
      ),
    );
  }
}
