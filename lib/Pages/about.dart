import 'package:flutter/material.dart';
import 'package:geekiga/Pages/login.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class About extends StatelessWidget {
  const About({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey, //change your color here
        ),
        title: Text('About Us', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(0, 48, 48, 48),
        elevation: 0,
      ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text(
                'Aplikasi ini dibuat oleh',
                style: TextStyle(
                  color: warnaEmas,
                  letterSpacing: 2
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Mochamad Taufiqul Hafizh | 003',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              
              SizedBox(height: 10),
              Text(
                'Nathanael Erlando Putra | 025',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30),
              
            ],
          ),
        ),
    );
  }

}