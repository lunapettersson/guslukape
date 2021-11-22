import 'package:flutter/material.dart';
import './model.dart';
import 'main_view.dart';
import 'package:provider/provider.dart';

void main() {
  var state = MyState();
  runApp(
    ChangeNotifierProvider(
      create: (context) => state,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          dividerTheme: DividerThemeData(
              space: 50,
              thickness: 10,
              color: Colors.grey,
              indent: 20,
              endIndent: 20)),
      home: MainView(),
    );
  }
}
