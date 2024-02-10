import 'package:flutter/material.dart';

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
                      Color(0xFF1d1E33),
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      Color(0xFF1d1E33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: reusableCard(
                Color(0xFF1d1E33),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: reusableCard(
                      Color(0xFF1d1E33),
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      Color(0xFF1d1E33),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
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
