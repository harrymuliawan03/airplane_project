import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget(
      {super.key,
      required this.title,
      this.placeholder = '',
      this.margin = 20,
      this.isEmail = false,
      this.isPassword = false});

  final String title;
  final String placeholder;
  final double margin;
  final bool isEmail;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kBlackColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: placeholder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
            keyboardType: isEmail ? TextInputType.emailAddress : null,
            obscureText: isPassword ? true : false,
          ),
        ],
      ),
    );
  }
}
