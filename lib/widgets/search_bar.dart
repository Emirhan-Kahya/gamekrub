import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';


class mSearchBar extends StatelessWidget {
  final VoidCallback press;
  const mSearchBar({Key? key, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimension.width20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.radius30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        style: TextStyle(
            color: AppColors.buttonBackgroundColor,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          hintText: "Search...",
          hintStyle: TextStyle(
              color: AppColors.buttonBackgroundColor,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w500),
          suffixIcon: GestureDetector(
            onTap: () {
              press;
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColors.buttonBackgroundColor,
            ),
          ),
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
