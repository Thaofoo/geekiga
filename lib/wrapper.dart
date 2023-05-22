import 'package:flutter/material.dart';
import 'package:geekiga/navbar.dart';
import 'package:geekiga/pages/landing.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'providers/authService.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          return user == null ? LandingPage() : Navbar();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
