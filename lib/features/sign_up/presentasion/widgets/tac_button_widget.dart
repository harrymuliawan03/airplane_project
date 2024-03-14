import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

class TacButtonWidget extends StatelessWidget {
  const TacButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        top: 50,
        bottom: 73,
      ),
      child: Text(
        'Terms and Condition',
        style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: light,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
