import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatListWidget extends StatelessWidget {
  const SeatListWidget(
      {super.key,
      required this.numberSeat,
      required this.seat1,
      required this.seat2,
      required this.seat3,
      required this.seat4,
      this.isCheck = false});

  final String numberSeat;
  final bool seat1;
  final bool seat2;
  final bool seat3;
  final bool seat4;
  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SeatItem(available: seat1, isCheck: isCheck),
          SeatItem(available: seat2, isCheck: isCheck),
          SizedBox(
            width: 48,
            height: 48,
            child: Center(
              child: Text(
                numberSeat,
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SeatItem(available: seat3),
          SeatItem(available: seat4)
        ],
      ),
    );
  }
}

class SeatItem extends StatelessWidget {
  const SeatItem({
    super.key,
    required this.available,
    this.isCheck = false,
  });

  final bool available;
  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: available ? Border.all(color: kPrimaryColor, width: 2) : null,
        color: isCheck
            ? kPrimaryColor
            : available
                ? kAvailableColor
                : kUnavailableColor,
      ),
      child: isCheck
          ? Center(
              child: Text(
                'YOU',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            )
          : null,
    );
  }
}
