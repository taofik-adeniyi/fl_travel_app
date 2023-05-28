import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;
  AppButton(
      {super.key,
      this.isIcon = false,
      this.text = "Hi",
      this.icon,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
          border: Border.all(color: borderColor, width: 1.0)),
      child: isIcon!
          ? Center(
              child: Icon(
                icon,
                color: color,
              ),
            )
          : Center(
              child: AppText(
                text: text!,
                color: color,
              ),
            ),
    );
  }
}
