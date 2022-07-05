import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_crash_course/concept_topics/sized_container.dart';

class DissmissibleWidget extends StatefulWidget {
  const DissmissibleWidget({Key? key}) : super(key: key);

  @override
  State<DissmissibleWidget> createState() => _DissmissibleWidgetState();
}

class _DissmissibleWidgetState extends State<DissmissibleWidget> {
  List<String> fruits = ["Mango", "Banana", "Apple", "Peach", "Lemon"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dissmissible Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: ((context, index) {
            final myfruit = fruits[index];

            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(fruits[index]),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                      content: Text(fruits[index]),
                    ),
                  );
                }
              },
              background: Container(
                color: Colors.red,
                child: const Icon(Icons.delete),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: const Icon(Icons.archive),
              ),
              key: Key(myfruit),
              child: Container(
                child: ListTile(
                  title: Text(
                    fruits[index],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
