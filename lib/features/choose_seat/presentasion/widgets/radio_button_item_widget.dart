import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

class RadioButtonItemWidget extends StatelessWidget {
  const RadioButtonItemWidget(
      {super.key, required this.text, required this.imageUrl});

  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Text(
              text,
              style: blackTextStyle.copyWith(overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
