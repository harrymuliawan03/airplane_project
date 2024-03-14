import 'package:airplane_project/features/home/presentasion/ui/home_screen.dart';
import 'package:airplane_project/features/main/presentasion/layout/bottom_navigation.dart';
import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  Widget buildContent() {
    return const HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          const BottomNavigation(),
        ],
      ),
    );
  }
}
