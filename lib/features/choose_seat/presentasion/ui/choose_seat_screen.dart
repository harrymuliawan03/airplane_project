import 'package:airplane_project/features/choose_seat/presentasion/widgets/radio_button_item_widget.dart';
import 'package:airplane_project/shared/theme.dart';
import 'package:flutter/material.dart';

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
  var available = true;
  var selected = false;
  var unavailable = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Row(
        children: [
          RadioButtonItemWidget(
              isCheck: available,
              text: 'Available',
              onSelect: () {
                setState(() {
                  available = true;
                  selected = false;
                  unavailable = false;
                });
              }),
          RadioButtonItemWidget(
              isCheck: selected,
              text: 'Selected',
              onSelect: () {
                setState(() {
                  available = false;
                  selected = true;
                  unavailable = false;
                });
              }),
          RadioButtonItemWidget(
              isCheck: unavailable,
              text: 'Unavailable',
              onSelect: () {
                setState(() {
                  available = false;
                  selected = false;
                  unavailable = true;
                });
              })
        ],
      ),
    );
  }
}
