import 'package:flutter/material.dart';
import 'package:gamekrub/utils/dimension.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String text;
  bool isObscure;
  AppTextField({
    Key? key,
    required this.textEditingController,
    required this.text,
    this.isObscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.radius15),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(1, 2),
            color: Colors.grey.withOpacity(0.1),
          ),
        ]
      ),
      child: TextField(
        autocorrect: false,
        enableSuggestions: false,
        obscureText: isObscure ? true : false,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.grey.withOpacity(0.7),
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w500,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.radius15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.radius15),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimension.radius15),
          ),
        ),
      ),
    );
  }
}
