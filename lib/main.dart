import 'package:ders1/101/Scaffold_learn.dart';
import 'package:ders1/101/app_bar_learn.dart';
import 'package:ders1/101/button_learn.dart';
import 'package:ders1/101/card_learn.dart';
import 'package:ders1/101/container_sized_box_learn.dart';
import 'package:ders1/101/icon_learn.dart';
import 'package:ders1/101/image_learn.dart';
import 'package:ders1/101/padding_learn.dart';
import 'package:ders1/101/stateless_widget_learn.dart';
import 'package:ders1/101/text_learn_view.dart';
import 'package:ders1/demos/note_demos_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.black, elevation: 0, centerTitle: true)),
      home: const NoteDemoView(),
    );
  }
}
