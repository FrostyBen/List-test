import 'package:flutter/material.dart';
import 'package:task_flutter_test/view/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.purple, brightness: Brightness.dark),
      title: 'test app',
      home: MainScreen(),
    );
  }
}
