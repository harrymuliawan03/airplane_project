import 'package:airplane_project/configs/router/route_names.dart';
import 'package:airplane_project/features/home/presentasion/widgets/card_new_destination.dart';
import 'package:airplane_project/features/home/presentasion/widgets/card_popular_destination.dart';
import 'package:airplane_project/features/home/presentasion/widgets/profile.dart';
import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardPopularDestination(
                onPress: () {
                  context.goNamed(RouteNames.detail);
                },
                imageUrl: 'assets/image_destination1.png',
                rating: '4.8',
                placeName: 'Lake Ciliwung',
                city: 'Tangerang',
              ),
              CardPopularDestination(
                onPress: () {
                  context.goNamed(RouteNames.detail);
                },
                imageUrl: 'assets/image_destination2.png',
                rating: '4.7',
                placeName: 'White Houses',
                city: 'Singapore',
              ),
              CardPopularDestination(
                onPress: () {
                  context.goNamed(RouteNames.detail);
                },
                imageUrl: 'assets/image_destination3.png',
                rating: '4.8',
                placeName: 'Hill Heyo',
                city: 'Monaco',
              ),
              CardPopularDestination(
                onPress: () {
                  context.goNamed(RouteNames.detail);
                },
                imageUrl: 'assets/image_destination4.png',
                rating: '5.0',
                placeName: 'Menarra',
                city: 'Japan',
              ),
              CardPopularDestination(
                onPress: () {
                  context.goNamed(RouteNames.detail);
                },
                imageUrl: 'assets/image_destination5.png',
                rating: '4.8',
                placeName: 'Payung Teduh',
                city: 'Singapore',
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const CardNewDestination(
              imageUrl: 'assets/image_destination6.png',
              rating: '4.5',
              placeName: 'Danau Beratan',
              city: 'Singaraja',
            ),
            const CardNewDestination(
              imageUrl: 'assets/image_destination7.png',
              rating: '4.5',
              placeName: 'Danau Beratan',
              city: 'Singaraja',
            ),
            const CardNewDestination(
              imageUrl: 'assets/image_destination8.png',
              rating: '4.5',
              placeName: 'Danau Beratan',
              city: 'Singaraja',
            ),
            const CardNewDestination(
              imageUrl: 'assets/image_destination9.png',
              rating: '4.5',
              placeName: 'Danau Beratan',
              city: 'Singaraja',
            ),
            const CardNewDestination(
              imageUrl: 'assets/image_destination10.png',
              rating: '4.5',
              placeName: 'Danau Beratan',
              city: 'Singaraja',
            )
          ],
        ),
      );
    }

    return ListView(
      children: [
        const Profile(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
