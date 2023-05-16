import 'package:flutter/material.dart';

class FavMovie with ChangeNotifier {
  String id;
  String movie_title;
  String movie_img;

  FavMovie(this.id, this.movie_title, this.movie_img);
}
