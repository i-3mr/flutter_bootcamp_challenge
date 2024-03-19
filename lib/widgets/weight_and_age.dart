// ignore_for_file: prefer_const_constructors

import 'package:challnge/widgets/counter_box.dart';
import 'package:flutter/cupertino.dart';
/// A widget that displays the weight and age counters.
class WeightAndAge extends StatelessWidget {
  const WeightAndAge({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Row(
        children: const [
          Expanded(
            child: CounterBox(
              name: "Weight",
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: CounterBox(
              name: "Height",
            ),
          ),
        ],
      ),
    );
  }
}
