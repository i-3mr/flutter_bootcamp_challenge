import "package:flutter/material.dart";

import "widgets/gender_box.dart";
import "widgets/slider_box.dart";
import "widgets/weight_and_age.dart";

/// this is a custom color that we will use in our app
/// if you want to change it later, you can change it from one place
const customBackgroundColor = Color(0x8D8DAFF8);
const customPrimaryColor = Color(0xFF0037AC);

void main() {
  /// [runApp] is a function that takes a widget and run it
  /// as the root of the widget tree
  runApp(
    /// [MaterialApp] is a widget that will hold our app
    /// it will give us some features
    const MaterialApp(
      /// [home] is a property that takes a widget
      /// and it will be the first screen that the user will see
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  /// [build] method is the method that responsible for holding
  /// the combination of widgets that creates the whole app
  /// that we have seen in the UI ( Our Design )
  @override
  Widget build(BuildContext context) {
    /// Here we choose to use a [Scaffold] widget
    /// because it has cool features like:
    /// appBar, body, bottomNavigationBar, floatingActionButton, etc
    return Scaffold(

      //* This is the appBar ( Top of the App )
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: customBackgroundColor,
      ),

      //* This is the body of the app
      /// Here we have a [Padding] widget which will push its child (Column)
      /// 16 pixels from all sides
      /// Try to set the 16 below to 0 and see what happens
      body: const Padding(
        padding: EdgeInsets.all(16),

        /// we choose [Column] because we want to have a vertical
        /// order of widgets
        child: Column(
          /// [children] of the [Column] is a list of widgets
          children: [

            /// First we have our [GenderBox] which an alias for
            /// our blue container that holds female/male icons
            /// hold on control/command key and click on [GenderBox] to see its code
            GenderBox(),

            /// Some spacing between the our GenderBox and the next widget
            SizedBox(height: 10),

            /// Next we have our [SliderBox] which an alias for
            /// another blue container that holds a slider and a text
            /// hold on control/command key and click on [SliderBox] to see its code
            SliderBox(),

            /// Some spacing between the our SliderBox and the next widget
            SizedBox(height: 10),

            /// Finally we have our [WeightAndAge] which an alias for
            /// a Row that holds two counters (one for weight and one for age)
            /// hold on control/command key and click on [WeightAndAge] to see its code
            WeightAndAge(),
          ],
        ),
      ),
    );
  }
}
