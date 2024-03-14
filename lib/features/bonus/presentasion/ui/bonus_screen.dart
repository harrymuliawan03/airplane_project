import 'package:airplane_project/configs/router/route_names.dart';
import 'package:airplane_project/features/bonus/presentasion/widgets/bonus_card.dart';
import 'package:airplane_project/features/bonus/presentasion/widgets/title_subtitle.dart';
import 'package:airplane_project/shared/theme.dart';
import 'package:airplane_project/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BonusScreen extends StatelessWidget {
  const BonusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BonusCard(),
            const SizedBox(
              height: 82,
            ),
            const TitleSubtitle(),
            ButtonWidget(
              title: 'Start Fly Now',
              marginTop: 50,
              marginBottom: 0,
              onPress: () {
                context.goNamed(RouteNames.main);
              },
            ),
          ],
        ),
      ),
    );
  }
}
