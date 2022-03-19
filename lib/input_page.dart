import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour);
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CalCulator',
            style: TextStyle(fontFamily: 'Georgia'),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
