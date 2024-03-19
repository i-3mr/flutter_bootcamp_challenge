// ignore_for_file: prefer_const_constructors

import 'package:challnge/main.dart';
import 'package:challnge/widgets/row_counter.dart';
import 'package:flutter/cupertino.dart';

/// A widget that represents a counter box with a name and minus/plus buttons.
class CounterBox extends StatelessWidget {
  /// [name] is the name of the counter box that will be
  /// displayed at the top of the box.
  final String name;

  const CounterBox({
    /// here we are taking the name from the class caller
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// Here we choose to use a [Container] widget
    /// because it has cool features like:
    /// background color, border-radius, alignment ( where to place child relative to me )
    /// and padding (spacing around the edges of the container)
    return Container(
      /// [alignment] is to tell the child to be in the center of me ( the Container )
      /// here we are using [Alignment.center] which means the child will be in the center
      /// try to change it to [Alignment.topLeft] and see what happens
      alignment: Alignment.center,


      /// [padding] is to give the child some spacing from the edges of the container
      /// here we are using [EdgeInsets.symmetric] which means we want to give the child
      /// 16 pixels from the top and bottom and 8 pixels from the left and right
      /// try to change the values and see what happens
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),

      // BoxDecoration to add a border radius and color to the container
      decoration: BoxDecoration(
        color: customBackgroundColor,

        /// [borderRadius] is to give the container rounded corners
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

          // SizedBox to add space between the name and the counter
          SizedBox(height: 20),

          /// [RowCounter] is a widget that represents a row with a counter and two buttons
          /// hold on control/command key and click on [RowCounter] to see its code
          RowCounter(),
        ],
      ),
    );
  }
}
