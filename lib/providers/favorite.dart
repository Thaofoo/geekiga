import 'package:flutter/material.dart';
import 'package:geekiga/models/movieList.dart';
import 'package:geekiga/providers/authService.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';

class Favorite with ChangeNotifier {
  Map<String, MovieList> _fav = {};
  Map<String, MovieList> get Fav => _fav;
  final List<MovieList> _fav3 = [];
  List<MovieList> get fav3 => _fav3;
  // List<dynamic> myList = _fav.values.toList();
  // Map<dynamic, dynamic> _fav3 = {};
  // Map<dynamic, dynamic> get fav3 => _fav3;
  final firebase = FirebaseDatabase.instance;

  // bool addFav(String id, String uid, String title, String cover, String year,
  //     String desc, String url) {
  //   if (_fav3.contains(title)) {
  //     // _fav3.remove(id);
  //     // deleteFromFavorite(uid, id);
  //     deleteFromFavoriteRTDB(uid, id);
  //     notifyListeners();

  //     return false;
  //   } else {
  //     // _fav.putIfAbsent(
  //     //     id,
  //     //     () => MovieList(
  //     //           id: id,
  //     //           movie_desc: desc,
  //     //           movie_title: title,
  //     //           movie_year: year,
  //     //           movie_img: cover,
  //     //           movie_url: url,
  //     //         ));
  //     notifyListeners();

  //     addtoFavoriteRTDB(
  //       id,
  //       uid,
  //       title,
  //       cover,
  //       year,
  //       desc,
  //       url,
  //     );

  //     return true;
  //   }
  // }

  // List<MovieList> get favorite_list {
  //   return [...favorite_list];
  // }

  void notifyListeners() {}

  Future<void>? addFav(String id, String uid, String title, String cover,
      String year, String desc, String url) {
    addtoFavoriteRTDB(
      id,
      uid,
      title,
      cover,
      year,
      desc,
      url,
    );
    notifyListeners();
    return null;
  }

  Future<void>? removeFav(String id, String uid) {
    deleteFromFavoriteRTDB(uid, id);
    notifyListeners();
    return null;
  }

  Future<void> addtoFavoriteRTDB(String id, String uid, String title,
      String cover, String year, String desc, String url) async {
    DatabaseReference ref =
        FirebaseDatabase.instance.ref().child('userfav/$uid/$id');

    await ref.set({
      "id": id,
      "uid": uid,
      "title": title,
      "cover": cover,
      "year": year,
      "desc": desc,
      "url": url,
    });
  }

  void deleteFromFavoriteRTDB(String uid, String id) {
    DatabaseReference ref =
        FirebaseDatabase.instance.ref().child('userfav/$uid/$id');
    ref.remove();
    notifyListeners();
  }

  Future<void> readFavorite(String uid) async {
    Uri url = Uri.parse(
        'https://geekiga-mobile-default-rtdb.asia-southeast1.firebasedatabase.app/userfav/$uid.json');

    var hasilGetData = await http.get(url);
    _fav3.clear();
    print(hasilGetData.body);
    // var dataResponse = json.decode(hasilGetData.body) as Map<String, dynamic>;
    // print("ini data response");
    // print(dataResponse.entries);

    // _fav2 = json.decode(hasilGetDataRTDB.value as String);
    // print(hasilGetData.body);
    // var testhasil = jsonDecode(hasilGetData.body) as List<dynamic>;
    // print(testhasil);

    // DatabaseReference ref =
    //     FirebaseDatabase.instance.ref().child('userfav/$uid');
    // var hasilGetDataRTDB = await ref.get();
    // var datas = (hasilGetDataRTDB.children);

    // Map<dynamic, dynamic> map = snapshot.data.snapshot.value;
    // map.values.toList()[index]["pic"];
    // final coba = data.value as Map<String, dynamic>;
    // // print(coba);
    // print(coba["id"]);
    // print(coba["title"]);

    // _fav3.addEntries([
    //   MapEntry('id', coba["id"]),
    //   MapEntry('movie_title', coba["title"]),
    //   MapEntry('movie_year', coba["year"]),
    //   MapEntry('movie_img', coba["cover"]),
    //   MapEntry('movie_desc', coba["desc"]),
    //   MapEntry('movie_url', coba["url"]),
    // ]);
    // dataResponse.forEach(
    //   (key, value) {
    //     // print(value);
    //     _fav3.add(
    //       MovieList(
    //         id: value["id"],
    //         movie_title: value["title"],
    //         movie_year: value["year"],
    //         movie_img: value["cover"],
    //         movie_desc: value["desc"],
    //         movie_url: value["url"],
    //       ),
    //     );
    //   },
    // );

    // print(_fav3);
    // _fav2 = json.decode(hasilGetDataRTDB.value as List<MovieList>);
    // print(_fav2);

    if (hasilGetData.body == "null") {
      print("You have no data");
    } else {
      var dataResponse =
          json.decode(hasilGetData.body) as Map<String, dynamic>?;
      //var dataResponse = json.decode(hasilGetData.body) as List<MovieList>?;
      print(dataResponse);

      print(dataResponse);
      dataResponse?.forEach(
        (key, value) {
          _fav3.add(
            MovieList(
              id: value["id"],
              movie_title: value["title"],
              movie_year: value["year"],
              movie_img: value["cover"],
              movie_desc: value["desc"],
              movie_url: value["url"],
            ),
          );
        },
      );

      // print(_fav2[0]);
    }
    print(_fav3);

    notifyListeners();
    // }
  }
}
