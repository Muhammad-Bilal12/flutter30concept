import 'package:flutter/material.dart';
import 'package:flutter_crash_course/concept_topics/imageWidget.dart';
import 'package:flutter_crash_course/ui/first_ui.dart';

import 'concept_topics/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        brightness: Brightness.light,
      ),
      home: const FirstScreen(),
    );
  }
}
