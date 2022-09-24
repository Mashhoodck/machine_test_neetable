import 'package:flutter/material.dart';
import 'package:machine_test_neetable/core/constants/constants.dart';

class UserDetailsWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final double? fontSize;
  const UserDetailsWidget(
      {Key? key,
      required this.text,
      this.textColor = Colors.white,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: fontSize),
          ),
          kHight10,
        ],
      ),
    );
  }
}
