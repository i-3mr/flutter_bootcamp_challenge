// ignore_for_file: prefer_const_constructors

import 'package:challnge/main.dart';
import 'package:flutter/material.dart';

class SliderBox extends StatefulWidget {
  const SliderBox({super.key});

  @override
  State<SliderBox> createState() => _SliderBoxState();
}

class _SliderBoxState extends State<SliderBox> {
  double sliderValue = 0;

  int maxHeight = 250;
  int minHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            "Height",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Slider(
            thumbColor: Colors.blue,
            value: sliderValue,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          Text(
            "${(minHeight + (maxHeight - minHeight) * sliderValue).toInt()} cm",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
