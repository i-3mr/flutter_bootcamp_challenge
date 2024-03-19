// ignore_for_file: prefer_const_constructors

import 'package:challnge/main.dart';
import 'package:challnge/widgets/row_counter.dart';
import 'package:flutter/cupertino.dart';

/// A widget that represents a counter box.
class CounterBox extends StatelessWidget {
  final String name;

  /// Constructs a CounterBox widget with the given [name].
  const CounterBox({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,

      // EdgeInsets.all to add padding to the container
      padding: EdgeInsets.all(8),

      // BoxDecoration to add a border radius and color to the container
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(16),
      ),

      // Column to display elements vertically
      child: Column(
        children: [
          // Text widget to display the name of the counter
          Text(
            name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          // SizedBox to add space between the text and the counter
          SizedBox(height: 20),
          // RowCounter widget to display the counter
          RowCounter(),
        ],
      ),
    );
  }
}
