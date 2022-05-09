import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/utils/colors.dart';
import 'package:gamekrub/utils/dimension.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String text;
  bool isObscure;
  IconData? icon;
  AppTextField({
    Key? key,
    required this.textEditingController,
    required this.text,
    this.isObscure = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
        border: Border.all(width: 1, color: AppColors.textColor2),
      ),
      child: TextField(
        autocorrect: false,
        enableSuggestions: false,
        obscureText: isObscure ? true : false,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(icon, color: AppColors.textColor2, size: Dimension.icon24),
          hintStyle: TextStyle(
            color: AppColors.textColor2,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w500,
            fontSize: Dimension.fontSize16
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.radius15 / 2),
          ),
        ),
      ),
    );
  }
}
