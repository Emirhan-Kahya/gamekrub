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
        height: Dimension.height50,
        decoration: isSelected ? BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 4, color: AppColors.iconColor)
            ),
            gradient: LinearGradient(
            colors: [
              AppColors.iconColor.withOpacity(0.25),
              AppColors.iconColor.withOpacity(0.015),
            ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
          )
        ) : BoxDecoration(),
        child: Icon(icon, color: isSelected ? AppColors.iconColor : Colors.grey.shade400),
      ),
    );
  }
}
