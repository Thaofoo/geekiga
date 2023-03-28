import 'package:flutter/material.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey, //change your color here
        ),
        title: Text(
          'About Us',
        ),
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
              height: 20,
              color: Colors.grey[800],
            ),
            Center(
              child: Text(
                'Aplikasi ini dibuat oleh',
                style: TextStyle(color: warnaEmas, letterSpacing: 2),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                foregroundImage: AssetImage('images/topik.jpg'),
                backgroundColor: Colors.white,
                radius: 60,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Mochamad Taufiqul Hafizh | 002',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Center(
              child: CircleAvatar(
                foregroundImage: AssetImage('images/edo.jpg'),
                backgroundColor: Colors.white,
                radius: 60,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Nathanael Erlando Putra | 025',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
