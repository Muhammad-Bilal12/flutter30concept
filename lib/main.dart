import 'package:flutter/material.dart';
import 'package:flutter_crash_course/concept_topics/buttons.dart';
import 'package:flutter_crash_course/concept_topics/list_grid_view.dart';
import 'package:flutter_crash_course/concept_topics/row_col_wrap.dart';
import 'package:flutter_crash_course/concept_topics/sized_container.dart';

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
      home: ListGridView(),
    );
  }
}
