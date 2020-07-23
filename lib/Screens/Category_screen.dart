import 'package:flutter/material.dart';
import '../Widgets/Category_item.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Anything')),
        body: Center(
          child: CategoryItem(),
        ));
  }
}
