import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalcuator());
}

class BMICalcuator extends StatelessWidget {
  const BMICalcuator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xFF0A0E21), secondary: Colors.purple.shade900),
      ),
      initialRoute: 'InputPage',
      routes: {
        'InputPage': (context) => InputPage(),
      },
    );
  }
}
