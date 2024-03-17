import 'package:airplane_project/configs/router/route_names.dart';
import 'package:airplane_project/features/detail/presentasion/widgets/interest_item_widget.dart';
import 'package:airplane_project/features/detail/presentasion/widgets/photo_item_widget.dart';
import 'package:airplane_project/shared/theme.dart';
import 'package:airplane_project/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        child: const Column(
          children: [
            // EMBLEM
            Emblem(),

            // RATING
            NameAndRating(),

            // Description
            Description(),

            // PriceAndButton and Book button
            PriceAndButton()
          ],
        ),
      ),
    );
  }
}

class Emblem extends StatelessWidget {
  const Emblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 108,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/icon_emblem.png'),
        ),
      ),
    );
  }
}

class NameAndRating extends StatelessWidget {
  const NameAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 256,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lake Ciliwung',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Tangerang',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: const EdgeInsets.only(right: 2),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_star.png'),
                  ),
                ),
              ),
              Text(
                '4.8',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
            style: blackTextStyle.copyWith(
              height: 1.8,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Photos',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Expanded(
                    child: Row(
                      children: [
                        PhotoItemWidget(imageUrl: 'assets/image_photo1.png'),
                        PhotoItemWidget(imageUrl: 'assets/image_photo2.png'),
                        PhotoItemWidget(imageUrl: 'assets/image_photo3.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Photos',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    InterestItemWidget(name: 'Kids Park'),
                    InterestItemWidget(name: 'Honor Bridge'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    InterestItemWidget(name: 'City Museum'),
                    InterestItemWidget(name: 'Central Mall'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PriceAndButton extends StatelessWidget {
  const PriceAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'IDR 2.500.000',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'per Orang',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          ButtonWidget(
            title: 'Book Now',
            width: 170,
            height: 55,
            onPress: () {
              context.goNamed(RouteNames.chooseSeat);
            },
            marginBottom: 0,
            marginTop: 0,
          ),
        ],
      ),
    );
  }
}
