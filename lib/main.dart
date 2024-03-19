import "package:flutter/material.dart";

import "widgets/gender_box.dart";
import "widgets/slider_box.dart";
import "widgets/weight_and_age.dart";

const customBackgroundColor = Color(0x8D8DAFF8);
const customPrimaryColor = Color(0xFF0037AC);

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
