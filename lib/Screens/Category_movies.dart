import 'package:Anything/Widgets/Movie_item.dart';
import 'package:Anything/dummy.dart';
import 'package:flutter/material.dart';

class CategoryMovieScreen extends StatelessWidget {
  static const routeArgs = "Category-screen";

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMovies = DUMMY_MOVIES.where((movies) {
      return movies.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: Center(
        child: ListView.builder(
          itemCount: categoryMovies.length,
          itemBuilder: (ctx, index) {
            return MovieItem(
              imdb: categoryMovies[index].imdb,
              reviews: categoryMovies[index].reviews,
              imageUrl: categoryMovies[index].imageUrl,
              title: categoryMovies[index].title,
              duration: categoryMovies[index].duration,
              id: categoryMovies[index].id,
            );
          },
        ),
      ),
    );
  }
}
