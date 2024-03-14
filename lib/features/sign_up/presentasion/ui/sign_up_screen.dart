import 'package:airplane_project/configs/router/route_names.dart';
import 'package:airplane_project/features/sign_up/presentasion/widgets/input_widget.dart';
import 'package:airplane_project/features/sign_up/presentasion/widgets/tac_button_widget.dart';
import 'package:airplane_project/shared/theme.dart';
import 'package:airplane_project/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSelection() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            const InputWidget(
              title: 'Full Name',
              placeholder: 'Your full name',
            ),
            const InputWidget(
              title: 'Email Address',
              placeholder: 'Your email address',
              isEmail: true,
            ),
            const InputWidget(
              title: 'Password',
              placeholder: 'Your password',
              isPassword: true,
            ),
            const InputWidget(
              title: 'Hobby',
              placeholder: 'Your hobby',
              margin: 30,
            ),
            ButtonWidget(
              onPress: () {
                context.goNamed(RouteNames.bonus);
              },
              title: 'Get Started',
              width: double.infinity,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSelection(),
            const TacButtonWidget(),
          ],
        ),
      ),
    );
  }
}
