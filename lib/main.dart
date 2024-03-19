// ignore_for_file: prefer_const_constructors

import "dart:developer";

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:item_count_number_button/item_count_number_button.dart";
import "package:rubber_app_bar/growing_widget.dart";
import "package:rubber_app_bar/rubber_app_bar.dart";
import "package:rubber_app_bar/scale_up_transistion.dart";

import "widgets/counter_box.dart";
import "widgets/gender_box.dart";
import "widgets/row_counter.dart";
import "widgets/slider_box.dart";
import "widgets/weight_and_age.dart";

const mainColor = Color(0x8D8DAFF8);

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: const [
            GenderBox(),
            SizedBox(height: 10),
            SliderBox(),
            SizedBox(height: 10),
            WeightAndAge(),
          ],
        ),
      ),
    );
  }
}
