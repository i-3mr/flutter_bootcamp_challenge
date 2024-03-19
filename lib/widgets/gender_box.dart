// ignore_for_file: prefer_const_constructors

import 'package:challnge/main.dart';
import 'package:flutter/material.dart';

/// [GenderBox] is a custom widget (alias so to speak) that holds
/// some combination of widgets that creates the
/// blue container having male/female icons
class GenderBox extends StatefulWidget {
  const GenderBox({super.key});

  @override
  State<GenderBox> createState() => _GenderBoxState();
}


class _GenderBoxState extends State<GenderBox> {
  /// [currentGender] is a variable that will store
  /// the current gender selected
  /// we gave it "male" as a default value
  /// and it will be updated by the user
  String currentGender = "male";


  /// [build] method is the method that responsible for holding
  /// the combination of widgets that creates the gender box
  /// that we have seen in the UI ( Our Design )
  @override
  Widget build(BuildContext context) {
    /// Here we choose to use a [Container] widget
    /// because it has cool features like:
    /// background color, border-radius which we need
    /// and padding (spacing around the edges of the container)
    return Container(
      padding: EdgeInsets.symmetric(
        /// try to change the values below and see what happens
        vertical: 20,
        horizontal: 10,
      ),

      /// Decoration is used to give the container some style
      /// Like: color, border-radius (rounded corners)
      decoration: BoxDecoration(
        color: customBackgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),

      /// Here we want to have a row to have male and female beside each other (horizontally)
      child: Row(
        children: [
          /// Male
          /// First we start with an [Expanded] widget
          /// which will try to take as much space as possible
          /// in this case, it will take half of the row
          Expanded(
            /// [child] of the [Expanded] widget is a [GestureDetector]
            /// [GestureDetector] is a widget that can detect user gestures (events)
            /// like: tap (click), drag, long press, etc
            child: GestureDetector(
              /// we gave our beautiful [GestureDetector] a function to run
              /// once the user taps on it
              onTap: () {

                /// we simply update the [currentGender] variable
                currentGender = "male";

                /// ask flutter to rebuild (call this [build] method again)
                setState(() {});
              },

              /// here we have a [Column] widget to have an icon on top
              /// of a text
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  /// [Icon] widget is used to display an icon
                  Icon(
                    Icons.male,
                    size: 75,

                    /// here we use a shorthand if statement ( condition ? ifTrue : ifFalse )
                    /// if the currentGender == "male", give it the primary color , else don't give it any color
                    color: currentGender == "male" ? customPrimaryColor : null,
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

          /// Female
          /// same as male code above
          Expanded(
            child: GestureDetector(
              onTap: () {
                /// we simply update the [currentGender] variable
                  currentGender = "female";

                /// ask flutter to rebuild (call this [build] method again)
                setState(() {});
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.female,
                    size: 75,
                    color:
                        currentGender == "female" ? customPrimaryColor : null,
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
