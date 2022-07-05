import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_crash_course/concept_topics/sized_container.dart';

class ListGridView extends StatefulWidget {
  ListGridView({Key? key}) : super(key: key);

  @override
  State<ListGridView> createState() => _ListGridViewState();
}

class _ListGridViewState extends State<ListGridView> {
  List<String> myName = [
    "bilal",
    "Ross",
    "Bruce",
    "Cook",
    "Carolyn",
    "Morgan",
    "Albert",
    "Walker",
    "Randy",
    "Reed",
    "Larry",
    "Barnes",
    "Lois",
    "Wilson",
    "Jesse",
    "Campbell"
  ];

  Map myDetails = {
    "Name": [
      "bilal",
      "Ross",
      "Bruce",
      "Cook",
      "Carolyn",
      "Morgan",
      "Albert",
      "Walker",
      "Randy",
      "Reed",
      "Larry",
      "Barnes",
      "Lois",
      "Wilson",
      "Jesse",
      "Campbell"
    ],
    "Marks": [
      98,
      76,
      12,
      123,
      5778,
      112,
      133,
      5677,
      123,
      567,
      678,
      7665,
      133,
      456,
      567,
      567
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List And Grid View"),
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: myName.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (itemContext, index) {
            return Card(
              child: Center(
                child: myTxt(myName[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Simple ListView
/* ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: View.myName.length,
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                subtitle: Text(myDetails["Name"][index]),
                title: Text(myDetails["Marks"][index].toString()),
              ),
            );
          },
        ),

*/
