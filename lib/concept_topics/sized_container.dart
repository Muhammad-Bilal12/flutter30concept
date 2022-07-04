import 'package:flutter/material.dart';

class SizedBox_Container extends StatelessWidget {
  const SizedBox_Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox_Container"),
      ),
      body: Center(
        child: myContainer(),
      ),
    );
  }
}

Widget mySizedBox() {
  return SizedBox(
    height: 200,
    width: 80,
    child: myTxt("This is Sized Box"),
  );
}

Widget myContainer() {
  return Container(
    height: 100,
    width: 180,
    decoration: BoxDecoration(
      color: Colors.blue,
    ),
    child: myTxt("This is container Box"),
  );
}

Widget myTxt(str) {
  return Text(
    str,
    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  );
}
