import 'package:flutter/material.dart';

class RowCol extends StatelessWidget {
  const RowCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Row and Wrap"),
      ),
      body: Container(
        color: Colors.grey,
        height: h * 0.5,
        width: w * 0.8,
        child: myRow(),
      ),
    );
  }
}

Widget myCol() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 50,
        width: 50,
        color: Colors.blue,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.green,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.orange,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.pink,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.purple,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.amber,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.cyanAccent,
      ),
    ],
  );
}

Widget myRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 50,
        width: 50,
        color: Colors.blue,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.green,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.orange,
      ),
    ],
  );
}
