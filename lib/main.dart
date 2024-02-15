import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'calculator',
      routes: {
        'calculator': (context) => InputPage(),
        'results': (context) => ResultsPage(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColorDark: Colors.red,
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.purple), //equal to accent colour
        appBarTheme: AppBarTheme(color: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
