import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBtn extends StatelessWidget {
  const MyBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Click me"),
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Click Me"),
                ),
              ),
              SizedBox(
                height: 50,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.touch_app_outlined),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.account_circle_sharp),
                label: Text("HEllo Corld"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
