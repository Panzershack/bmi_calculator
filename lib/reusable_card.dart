import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  final Color myColor;
  final Widget? cardChild;

  reusableCard(this.myColor, {this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: myColor,
      ),
    );
  }
}
