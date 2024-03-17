import 'package:flutter/material.dart';

class InterestItemWidget extends StatelessWidget {
  const InterestItemWidget({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
