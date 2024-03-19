// ignore_for_file: prefer_const_constructors

import 'package:challnge/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A widget that displays a row with a counter that can be incremented or decremented.
class RowCounter extends StatefulWidget {
  const RowCounter({super.key});

  @override
  State<RowCounter> createState() => _RowCounterState();
}

class _RowCounterState extends State<RowCounter> {
  /// [counter] is a variable that will store
  /// the current value of the counter
  /// when the user taps on the + or - buttons, we must update this variable
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    /// Here we choose to use a [Row] widget
    /// because we want to have a horizontal order of widgets
    /// first we have a minus button, then the counter, then a plus button
    return Row(
      children: [
        /// Minus Button
        /// First we start with an [Expanded] widget
        /// which will try to take as much space as possible
        Expanded(
          /// [child] of the [Expanded] widget is a [GestureDetector]
          /// [GestureDetector] is a widget that can detect user gestures (events)
          /// like: tap (click), drag, long press, etc
          child: GestureDetector(
            /// we gave our [GestureDetector] a function to run
            /// when the user taps on
            onTap: () {
              /// if the counter is already 0, we will stop here and return
              if (counter <= 0) return;

              /// if the counter is not 0, we will decrement it by 1
              counter--;

              /// ask for a rebuild (calling this [build] method again)
              setState(() {});
            },

            /// [child] of the [GestureDetector] is a [Container]
            /// which will hold the minus sign with a blue background
            /// and top-left and bottom-left rounded corners
            child: Container(
              /// ask the container to take its child in the center of it
              alignment: Alignment.center,

              /// BoxDecoration to give the container some style
              /// like: color, border-radius
              decoration: BoxDecoration(
                color: customPrimaryColor,

                /// borderRadius is to give the container rounded corners
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),

              /// [child] of the [Container] is a [Text] widget
              child: Text(
                "-",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        /// Text counter wrapped with a SizedBox to give it enough space
        SizedBox(
          width: 50,
          child: Center(
            child: Text(
              /// here we display the most recent value of the counter
              /// since this build method will be called again when the counter changes
              /// the text will be updated with the new value
              "$counter",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        /// Plus Button
        /// Same as the minus button above
        Expanded(
          child: GestureDetector(
            onTap: () {
              /// increment the counter by 1
              counter++;

              /// ask for a rebuild (calling this [build] method again)
              setState(() {});
            },
            child: Container(
              width: double.infinity,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: customPrimaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Text(
                "+",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
