import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  final Color? myColor;
  final Widget? cardChild;
  final Function? onPress;

  reusableCard({this.myColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress!();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: myColor,
        ),
      ),
    );
  }
}
