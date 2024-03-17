import 'package:flutter/material.dart';

class RadioButtonItemWidget extends StatelessWidget {
  const RadioButtonItemWidget(
      {super.key,
      required this.isCheck,
      required this.text,
      required this.onSelect});

  final bool isCheck;
  final String text;
  final void Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: InkWell(
          borderRadius: BorderRadius.circular(26),
          onTap: onSelect,
          child: Row(
            children: [
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(isCheck
                        ? 'assets/icon_selected.png'
                        : 'assets/icon_unavailable.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
