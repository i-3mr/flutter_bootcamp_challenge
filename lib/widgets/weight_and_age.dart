// ignore_for_file: prefer_const_constructors

import 'package:challnge/widgets/counter_box.dart';
import 'package:flutter/cupertino.dart';

/// This widget represents a row with two counter boxes.
/// The first counter box is for the weight and the second is for the height.
class WeightAndAge extends StatelessWidget {
  const WeightAndAge({super.key});

  /// [build] method is the method that responsible for holding
  /// the Row that holds two counters (one for weight and one for age)
  @override
  Widget build(BuildContext context) {
    /// Here we choose to use a [Row] widget
    /// because we want to have a horizontal order of widgets
    return Row(
      children: const [
        /// [Expanded] widget is a widget that will try
        /// to take as much space as possible
        Expanded(
          /// [child] of the [Expanded] widget is a [CounterBox]
          /// [CounterBox] is a widget that represents a counter box
          /// hold on control/command key and click on [CounterBox] to see its code
          child: CounterBox(
            name: "Weight",
          ),
        ),

        // Some spacing between the two counters
        SizedBox(width: 20),

        /// [Expanded] widget is a widget that will try
        /// to take as much space as possible
        Expanded(
          /// [child] of the [Expanded] widget is a [CounterBox]
          /// [CounterBox] is a widget that represents a counter box
          /// hold on control/command key and click on [CounterBox] to see its code
          child: CounterBox(
            name: "Height",
          ),
        ),
      ],
    );
  }
}
