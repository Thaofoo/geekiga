import 'package:flutter/material.dart';

class WatchListPage extends StatelessWidget {
  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "Watchlist Page",
        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
