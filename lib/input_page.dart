import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          )
                        ],
                      )),
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

const Widget sizedbox = SizedBox();

class reusableCard extends StatelessWidget {
  reusableCard(
    this.myColor,
    this.cardChild,
  );

  reusableCard.withColor(this.myColor, {this.cardChild = sizedbox});

  final Color myColor;
  final Widget cardChild;

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
