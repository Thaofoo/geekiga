import 'package:flutter/material.dart';

class MovieList with ChangeNotifier {
  String id;
  String movie_title;
  String movie_year;
  String movie_img;
  String movie_desc;
  String movie_url;

  MovieList({
    required this.id,
    required this.movie_title,
    required this.movie_year,
    required this.movie_img,
    required this.movie_desc,
    required this.movie_url,
  });
}
