import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? boolIsResponsive;
  double? width;
  ResponsiveButton({super.key, this.boolIsResponsive = false, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("images/button-one.png")],
      ),
    );
  }
}
