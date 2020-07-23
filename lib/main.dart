import 'package:flutter/material.dart';
import 'Screens/Category_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anything',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: CategoryScreen(),
    );
  }
}
