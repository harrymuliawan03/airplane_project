import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image_destination1.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
