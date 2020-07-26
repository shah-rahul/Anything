import 'package:flutter/material.dart';
import 'Screens/Category_movies.dart';
import 'Screens/Category_screen.dart';
import 'Screens/Movie_detail.dart';
// import 'Screens/Loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anything',
      theme: ThemeData(
        primarySwatch: Colors.red,
        backgroundColor: Colors.black87,
        canvasColor: Colors.black54,
        accentColor: Colors.white,
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Colors.white70),
              headline6: TextStyle(fontSize: 24),
            ),
      ),
      home: CategoryScreen(),
      routes: {
        CategoryMovieScreen.routeArgs: (ctx) => CategoryMovieScreen(),
        MovieDetailScreen.routeName: (ctx) => MovieDetailScreen(),
      },
    );
  }
}
