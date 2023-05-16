import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class Users with ChangeNotifier {
  List<User> _allUser = [];

  List<User> get allUser => _allUser;

  // int get jumlahUser => _allUser.length;

  User selectById(String id) =>
      _allUser.firstWhere((element) => element.id == id);

  Future<void> addUser(
      String email, String firstName, String lastName, String password) {
    Uri url = Uri.parse(
        "https://geekiga-mobile-default-rtdb.asia-southeast1.firebasedatabase.app/Users.json");

    return http
        .post(
      url,
      body: json.encode(
        {
          "email": email,
          "firstName": firstName,
          "lastName": lastName,
          "password": password,
        },
      ),
    )
        .then(
      (response) {
        print("THEN FUNCTION");
        _allUser.add(
          User(
            id: json.decode(response.body)["name"].toString(),
            email: email,
            firstName: firstName,
            lastName: lastName,
            password: password,
          ),
        );

        notifyListeners();
      },
    );
  }

  // void editUser(String id, String email, String firstName, String lastName,
  //     String password, BuildContext context) {
  //   User selectUser = _allUser.firstWhere((element) => element.id == id);
  //   selectUser.email = email;
  //   selectUser.firstName = firstName;
  //   selectUser.lastName = lastName;
  //   selectUser.password = password;

  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text("Berhasil diubah"),
  //       duration: Duration(seconds: 2),
  //     ),
  //   );
  //   notifyListeners();
  // }

  // void deleteUser(String id, BuildContext context) {
  //   _allUser.removeWhere((element) => element.id == id);
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text("Berhasil dihapus"),
  //       duration: Duration(milliseconds: 500),
  //     ),
  //   );
  //   notifyListeners();
  // }
}
