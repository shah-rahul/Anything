import 'package:flutter/material.dart';

class CategoryMovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('movies in detail ')),
      body: Center(
        child: Text(
          "this is our second page",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
