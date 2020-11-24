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
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Card(),
                Card(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Card(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Card(),
                Card(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  static const Color DEFAULT_COLOR = Color(0xFF1D1E33);

  Card({this.color = DEFAULT_COLOR});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
