import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? boolIsResponsive;
  final double? width;
  final String? text;
  const ResponsiveButton(
      {super.key, this.boolIsResponsive = false, this.width, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              text: text!,
              color: Colors.white,
            ),
            Image.asset("images/button-one.png")
          ],
        ),
      ),
    );
  }
}
