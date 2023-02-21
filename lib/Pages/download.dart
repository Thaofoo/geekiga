import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
                child: Text(
                  "Download Page", 
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