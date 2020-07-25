import 'package:flutter/material.dart';
import '../Screens/Category_movies.dart';
// import '../dummy.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem(
    this.color,
    this.title,
  );

  void navigation1(BuildContext context) {
    Navigator.of(context).pushNamed("category-movies");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () => navigation1(context),
        child: Container(
          height: 50,
          width: 300,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
