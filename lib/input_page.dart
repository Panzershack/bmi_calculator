import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1d1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color crimsonRed = Color(0xFFeb1555);

enum gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender? selectedGender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                    child: reusableCard(
                      selectedGender == gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: iconContent('Male', FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    child: reusableCard(
                      selectedGender == gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: iconContent('Female', FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusableCard(activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(activeCardColor),
                ),
                Expanded(
                  child: reusableCard(activeCardColor),
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
