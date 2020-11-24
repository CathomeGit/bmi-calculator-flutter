import 'package:flutter/material.dart';

const Color cardColour = Color(0xFF1D1E33);

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
                Card(color: cardColour),
                Card(color: cardColour),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Card(color: cardColour),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Card(color: cardColour),
                Card(color: cardColour),
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

  Card({@required this.color});

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
