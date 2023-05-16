import 'package:flutter/material.dart';
import 'package:geekiga/models/FavMovies.dart';
import 'package:geekiga/models/movieList.dart';

class Favorite with ChangeNotifier {
  Map<String, FavMovie> _Fav = {};
  Map<String, FavMovie> get Fav => _Fav;

  bool AddFav(String id, String title, String cover) {
    if (_Fav.containsKey(id)) {
      _Fav.remove(id);
      return false;
    } else {
      _Fav.putIfAbsent(
          id, () => FavMovie(DateTime.now().toString(), title, cover));
      return true;
    }
  }

  // void RemoveFav(String id) {
  //   _Fav.remove(id);
  // }

  void notifyListeners() {}
}
