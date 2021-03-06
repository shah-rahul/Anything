import 'package:flutter/material.dart';
import '../Widgets/Category_item.dart';
import '../dummy.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Anything',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: GridView(
            children: DUMMY_CATEGORIES
                .map((catData) => CategoryItem(
                      catData.color,
                      catData.id,
                      catData.title,
                    ))
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            )));
  }
}
