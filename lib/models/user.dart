import 'package:flutter/material.dart';

class User with ChangeNotifier {
  final String uid;
  final String? email;
  // String firstName;
  // String lastName;
  // String password;

  User(
    this.uid,
    this.email,
    // required this.firstName,
    // required this.lastName,
    // required this.password
  );
}
