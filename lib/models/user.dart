import 'package:flutter/material.dart';

class User with ChangeNotifier {
  final String uid;
  final String? email;
  // final String password;

  User(
    this.uid,
    this.email,
    // this.password,
  );
}
