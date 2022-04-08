import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const BMICalcuator());
}

class BMICalcuator extends StatelessWidget {
  const BMICalcuator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFF0A0E21),
            secondary: Colors.purple.shade900),
      ),
      initialRoute: 'InputPage',
      routes: {
        'InputPage': (context) => const InputPage(),
      },
    );
  }
}
