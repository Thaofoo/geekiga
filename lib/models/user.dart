import 'package:flutter/material.dart';

class User with ChangeNotifier {
  String id;
  String email;
  String firstName;
  String lastName;
  String password;

  User(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.password});
}
