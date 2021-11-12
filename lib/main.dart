import 'package:flutter/material.dart';

void main() {
  runApp(LukasApp());
}

class LukasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Att göra'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_right),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondView()));
            },
          ),
        ],
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return ListView(children: [
      ListTile(
        leading: Checkbox(value: false, onChanged: (val) {}),
        title: const Text("Gör gröt"),
        trailing: const Icon(Icons.delete),
      ),
      ListTile(
        leading: Checkbox(value: false, onChanged: (val) {}),
        title: const Text("Mjölka kossorna"),
        trailing: const Icon(Icons.delete),
      ),
      ListTile(
        leading: Checkbox(value: false, onChanged: (val) {}),
        title: const Text("Mata getterna"),
        trailing: const Icon(Icons.delete),
      ),
      ListTile(
        leading: Checkbox(value: false, onChanged: (val) {}),
        title: const Text("Klipp åkern"),
        trailing: const Icon(Icons.delete),
      ),
      ListTile(
        leading: Checkbox(value: false, onChanged: (val) {}),
        title: const Text("Rensa ogräs"),
        trailing: const Icon(Icons.delete),
      ),
      ListTile(
        leading: Checkbox(value: true, onChanged: (val) {}),
        title: const Text("Lev livet",
            style: TextStyle(decoration: TextDecoration.lineThrough)),
        trailing: const Icon(Icons.delete),
      ),
      ListTile(
        leading: Checkbox(value: false, onChanged: (val) {}),
        title: const Text(
          "Åk till handlarn",
        ),
        trailing: const Icon(Icons.delete),
      )
    ]);
  }
}

class SecondView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lägg till projekt'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(hintText: 'Nytt projekt'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Icon(Icons.add),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Lägg till'),
            )
          ],
        ),
      ),
    );
  }
}
