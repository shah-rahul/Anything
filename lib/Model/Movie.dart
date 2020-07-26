
import 'package:flutter/material.dart';

enum Reviews {
  Excellent,
  Okay,
  Poor,
}

class Movies {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> cast;
  final int duration;
  final Reviews reviews;
  final double imdb;
  const Movies(
      {@required this.id,
      @required this.cast,
      @required this.categories,
      @required this.duration,
      @required this.imageUrl,
      @required this.imdb,
      @required this.reviews,
      @required this.title});
}
