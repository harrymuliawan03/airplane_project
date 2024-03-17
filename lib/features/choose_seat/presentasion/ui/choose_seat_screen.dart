import 'package:airplane_project/features/choose_seat/presentasion/widgets/radio_button_item_widget.dart';
import 'package:airplane_project/features/choose_seat/presentasion/widgets/seat_list_widget.dart';
import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChooseSeatScreen extends StatelessWidget {
  const ChooseSeatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              RadioButtonList(),
              SelectSeat(),
            ]),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Select Your\nFavorite Seat',
      style: blackTextStyle.copyWith(
        fontSize: 24,
        fontWeight: semiBold,
      ),
    );
  }
}

class RadioButtonList extends StatefulWidget {
  const RadioButtonList({super.key});

  @override
  State<RadioButtonList> createState() => _RadioButtonListState();
}

class _RadioButtonListState extends State<RadioButtonList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: const Row(
        children: [
          RadioButtonItemWidget(
            text: 'Available',
            imageUrl: 'assets/icon_available.png',
          ),
          RadioButtonItemWidget(
            text: 'Selected',
            imageUrl: 'assets/icon_selected.png',
          ),
          RadioButtonItemWidget(
            text: 'Unavailable',
            imageUrl: 'assets/icon_unavailable.png',
          )
        ],
      ),
    );
  }
}

class SelectSeat extends StatelessWidget {
  const SelectSeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kWhiteColor,
      ),
      child: Column(
        children: [
          // NOTE SEAT
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    'A',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    'B',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    '',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    'C',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    'D',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // SEAT 1
          const SeatListWidget(
            numberSeat: '1',
            seat1: true,
            seat2: false,
            seat3: false,
            seat4: false,
            isCheck: true,
          ),
          const SeatListWidget(
            numberSeat: '2',
            seat1: false,
            seat2: true,
            seat3: false,
            seat4: false,
            isCheck: true,
          ),
          const SeatListWidget(
            numberSeat: '3',
            seat1: false,
            seat2: false,
            seat3: true,
            seat4: false,
          ),
          const SeatListWidget(
            numberSeat: '4',
            seat1: true,
            seat2: false,
            seat3: false,
            seat4: true,
          ),
          const SeatListWidget(
            numberSeat: '5',
            seat1: true,
            seat2: false,
            seat3: false,
            seat4: false,
          ),
        ],
      ),
    );
  }
}
