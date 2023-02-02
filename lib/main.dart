import 'package:ders1/101/Scaffold_learn.dart';
import 'package:ders1/101/container_sized_box_learn.dart';
import 'package:ders1/101/text_learn_view.dart';
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
      theme: ThemeData.dark(),
      home: const ScaffoldLearnWidget(),
    );
  }
}
