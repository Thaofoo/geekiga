import 'package:flutter/material.dart';

class FavMovie with ChangeNotifier {
  String id;
  String movieTitle;
  String movieImg;

  FavMovie(this.id, this.movieTitle, this.movieImg);
}
