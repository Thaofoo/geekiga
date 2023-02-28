import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
                child: Text(
                  "Top Watched Movie Page", 
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