import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.title,
      this.onPress,
      this.height,
      this.width,
      this.marginTop,
      this.marginBottom});

  final String title;
  final void Function()? onPress;
  final double? height;
  final double? width;
  final double? marginTop;
  final double? marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 220,
      height: height ?? 55,
      margin: EdgeInsets.only(
        top: marginTop ?? 50,
        bottom: marginBottom ?? 80,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            )),
        onPressed: onPress,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
    );
  }
}
