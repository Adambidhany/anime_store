import 'package:anime_store/data/datasource/static/appColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class buttons extends StatelessWidget {
  final String text;
  final Color backColor;
  final Color textColor;
  final VoidCallback onPressed;
  final ShapeBorder border;

  const buttons(
      {Key? key,
      required this.text,
      required this.backColor,
      required this.textColor,
      required this.onPressed,
      required this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backColor,
      padding: EdgeInsets.symmetric(horizontal: Get.width * .36, vertical: 20),
      child: Text(text, style: TextStyle(color: textColor, fontSize: 16)),
      shape: border,
    );
  }
}
