import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimension.dart';
import '../text_widgets/mBigText.dart';

class AccountButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final IconData iconPrefix;
  IconData? iconSuffix;
  AccountButton({Key? key, required this.press,  required this.text, required this.iconPrefix, this.iconSuffix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: Dimension.width20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimension.radius15)
        ),
        child: Row(
          children: [
            //icon prefix
            Icon(iconPrefix, color: AppColors.iconColor, size: Dimension.fontSize18),
            SizedBox(width: Dimension.width10),
            mBigText(text: text, fontSize: Dimension.fontSize14),
            Expanded(child: Container()),
            //icon suffix
            Icon(iconSuffix, color: AppColors.iconColor, size:Dimension.fontSize18),
          ],
        ),
      ),
    );
  }
}
