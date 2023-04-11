import 'package:flutter/material.dart';

class User with ChangeNotifier {
  String firstName;
  String lastName;
  String email;
  String password;

  User(this.firstName, this.lastName, this.email, this.password);
}
