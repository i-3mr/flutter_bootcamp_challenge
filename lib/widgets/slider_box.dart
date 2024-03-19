// ignore_for_file: prefer_const_constructors

import 'package:challnge/main.dart';
import 'package:flutter/material.dart';

class SliderBox extends StatefulWidget {
  const SliderBox({super.key});

  @override
  State<SliderBox> createState() => _SliderBoxState();
}

class _SliderBoxState extends State<SliderBox> {
  /// [sliderValue] is a variable that will store
  /// the current value of the slider as the user drags it
  /// when the user drags the slider, we must update this variable
  /// and call [setState] to ask for a rebuild of these widgets inside it
  double sliderValue = 0;

  /// [build] method is the method that responsible for holding
  /// the combination of widgets that creates the slider box
  /// that we have seen in the UI ( Our Design )
  @override
  Widget build(BuildContext context) {
    /// Here we choose to use a [Container] widget
    /// because it has cool features like:
    /// background color, width, height, border-radius
    /// and padding (spacing around the edges of the container)
    return Container(
      padding: EdgeInsets.all(12),

      // Decoration is used to give the container some style
      // Like: color, border-radius
      decoration: BoxDecoration(
        color: customBackgroundColor,
        //* borderRadius is to give the container rounded corners
        borderRadius: BorderRadius.circular(16),
      ),

      // Here we want to have a text at the top, a slider in the middle,
      // and a text at the bottom
      child: Column(
        children: [
          // This is the text at the top
          Text(
            "Height",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Some spacing between the text and the slider
          SizedBox(height: 20),

          // The Slider
          Slider(
            // This is the color of the thumb (the circle that you drag)
            thumbColor: customPrimaryColor,
            // This is the color of the active part of the slider
            activeColor: customPrimaryColor,

            // This is current value of the slider
            // (The value you see on the screen)
            value: sliderValue,

            // I think this is so clear, why are you still reading?
            // bro! it is just min and max values for the slider
            // I am just kidding 😂😂
            min: 0,
            max: 250,

            // This is a function that the slider asks us to provide
            // in order to invoke it (call it) as the value of the slider changes
            // (basically when user drags the slider)
            onChanged: (value) {
              /// [value] is the new value of the slider
              /// so we need to store it in the [sliderValue] variable
              /// the main reason of storing it in the [sliderValue] variable
              /// is that the [sliderValue] is outside the build method
              /// which will be called every time we ask flutter to rebuild
              /// the widget (for example when we call setState)

              // store the new value in the [sliderValue] variable
              sliderValue = value;

              // ask for a rebuild of the widget
              // ( it will call this [build] method again )
              setState(() {});
            },
          ),

          /// This is the text that shows the current value of the slider
          /// - every time the user drags the slider
          /// - we update the [sliderValue] variable
          /// - call [setState] to ask for a rebuild
          /// - the [build] method will build all these widgets again
          /// - this below text will have the most recent value of the slider
          /// this is a second reason why we store the value in outside variable
          Text(
            ///! try to remove the toInt() and see what happens
            "${sliderValue.toInt()} cm", 
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
