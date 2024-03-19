// ignore_for_file: prefer_const_constructors

import 'package:challnge/main.dart';
import 'package:flutter/material.dart';

class GenderBox extends StatefulWidget {
  const GenderBox({super.key});

  @override
  State<GenderBox> createState() => _GenderBoxState();
}

class _GenderBoxState extends State<GenderBox> {
  String currentGender = "male";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Male
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentGender = "male";
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.male,
                    size: 75,
                    color: currentGender == "male" ? Colors.blue : null,
                  ),
                  Text(
                    "male",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
          ),

          // Female
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentGender = "female";
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.female,
                    size: 75,
                    color: currentGender == "female" ? Colors.blue : null,
                  ),
                  Text(
                    "female",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
