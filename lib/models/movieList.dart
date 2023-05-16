import 'package:flutter/material.dart';

class MovieList with ChangeNotifier {
  String id;
  String movie_title;
  String movie_year;
  String movie_img;
  String movie_desc;

  MovieList(this.id, this.movie_title, this.movie_year, this.movie_img,
      this.movie_desc);
}
