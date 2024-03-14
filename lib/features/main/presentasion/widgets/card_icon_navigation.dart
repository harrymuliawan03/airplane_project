import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

class CardIconNavigation extends StatelessWidget {
  const CardIconNavigation(
      {super.key, required this.imageUrl, this.isActive = false});

  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : kTransparentColor,
          ),
        ),
      ],
    );
  }
}
