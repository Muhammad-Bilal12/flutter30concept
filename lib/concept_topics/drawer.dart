import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    //drawer / end Drawer
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Widget'),
      ),
      drawer: Drawer(
          child: Container(
        color: Colors.deepPurple.shade900,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Row(children: [
                    // CircleAvatar(
                    //     radius: 40,
                    //     backgroundImage:
                    //         NetworkImage('assets\images\Profile.png')),

                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets\images\Profile.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Akshit Madan',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text('Data Science'),
                        ])
                  ]),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('My Files'),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Shared with me'),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trash'),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text('Uploads'),
            ),
          ],
        ),
      )),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets\images\car.jpg"),
            ),
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      "data:image/jpeg;base64,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"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
