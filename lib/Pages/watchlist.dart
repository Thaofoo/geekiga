import 'package:flutter/material.dart';

class WatchListPage extends StatelessWidget {
  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
                child: Text(
                  "Watchlist Page", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 22.0, 
                    fontWeight: FontWeight.bold
                    ),
                ),
              )
    ); 
  }
}