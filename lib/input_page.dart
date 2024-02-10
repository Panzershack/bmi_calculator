import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const Color darkBlue = Color(0xFF1d1E33);
const Color crimsonRed = Color(0xFFeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    darkBlue,
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    darkBlue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusableCard(
              darkBlue,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    darkBlue,
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    darkBlue,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: crimsonRed,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class reusableCard extends StatelessWidget {
  reusableCard(this.myColor);

  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: myColor,
      ),
    );
  }
}
