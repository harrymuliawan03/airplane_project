import 'package:airplane_project/features/main/presentasion/widgets/card_icon_navigation.dart';
import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
          bottom: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CardIconNavigation(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            CardIconNavigation(
              imageUrl: 'assets/icon_card.png',
            ),
            CardIconNavigation(
              imageUrl: 'assets/icon_booking.png',
            ),
            CardIconNavigation(
              imageUrl: 'assets/icon_settings.png',
            ),
          ],
        ),
      ),
    );
  }
}
