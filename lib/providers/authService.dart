import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import '../models/user.dart';

class AuthService with ChangeNotifier {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
  String? _idToken, userId, displayName;
  // String? id;
  String? image, email;
  // DateTime? _expiryDate;

  User? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return User(
      user.uid,
      user.email,
    );
  }

  // Future<String> getCurrentUID() async {
  //   return (await _firebaseAuth.currentUser!().uid);
  // }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    getUserDetail();
  }

  Future<void> getUserDetail() async {
    userId = _firebaseAuth.currentUser!.uid;
    displayName = _firebaseAuth.currentUser!.photoURL;
    email = _firebaseAuth.currentUser!.email;
    notifyListeners();
  }

  Future<User?> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    return _userFromFirebase(credential.user);
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
