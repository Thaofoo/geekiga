// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import '../models/User.dart';

// class Users with ChangeNotifier {
//   List<User> _allUser = [];

//   List<User> get allUser => _allUser;

//   int get jumlahUser => _allUser.length;

//   User selectById(String id) =>
//       _allUser.firstWhere((element) => element.id == id);

//   Future<void> addUser(
//       String firstName, String lastName, String email, String password) {
//     Uri url = Uri.parse(
//         "https://http-req-bec2d-default-rtdb.firebaseio.com/User.json");
//     return http
//         .post(
//       url,
//       body: json.encode(
//         {
//           "firstName": firstName,
//           "lastName": lastName,
//           "email": email,
//           "password": password,
//         },
//       ),
//     )
//         .then(
//       (response) {
//         print("THEN FUNCTION");
//         _allUser.add(
//           User(
//             // id: json.decode(response.body)["name"].toString(),
//             firstName: firstName,
//             lastName: lastName,
//             email: email,
//             password: password,
//           ),
//         );

//         notifyListeners();
//       },
//     );
//   }

//   void editUser(String id, String name, String position, String image,
//       BuildContext context) {
//     User selectUser = _allUser.firstWhere((element) => element.id == id);
//     selectUser.firstName = name;
//     selectUser.lastName = position;
//     selectUser.email = image;

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text("Berhasil diubah"),
//         duration: Duration(seconds: 2),
//       ),
//     );
//     notifyListeners();
//   }

//   void deleteUser(String id, BuildContext context) {
//     _allUser.removeWhere((element) => element.id == id);
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text("Berhasil dihapus"),
//         duration: Duration(milliseconds: 500),
//       ),
//     );
//     notifyListeners();
//   }
// }
