import 'package:airplane_project/features/detail/presentasion/widgets/background_image.dart';
import 'package:airplane_project/features/detail/presentasion/widgets/content.dart';
import 'package:airplane_project/features/detail/presentasion/widgets/custom_shadow.dart';
import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: const SingleChildScrollView(
        child: Stack(
          children: [
            BackgroundImage(),
            CustomShadow(),
            Content(),
          ],
        ),
      ),
    );
  }
}
