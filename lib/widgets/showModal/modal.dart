import 'package:flutter/material.dart';
import 'package:gamekrub/widgets/account_widgets/account_widget.dart';

class Modal {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: [

          ],
        );
      },
    );
  }
  Widget _bottomSheetItem(BuildContext context, IconData prefix, IconData suffix, String text, VoidCallback press){
    return AccountButton(press: press, text: text, iconPrefix: prefix, iconSuffix: suffix);
  }
}
