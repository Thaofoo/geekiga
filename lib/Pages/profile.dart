import 'package:flutter/material.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        title: Text(
          'Your Profile',
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(0, 48, 48, 48),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                foregroundImage: AssetImage('assets/images/topik.jpg'),
                backgroundColor: Colors.white,
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(color: warnaEmas, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              'Mochamad Taufiqul Hafizh',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  letterSpacing: 2, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              'Email',
              style: TextStyle(color: warnaEmas, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Container(
                width: 350,
                // padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.email,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 260,
                      child: Text(
                        "mochamad.taufiqul@gmail.com",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 18, letterSpacing: 1),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
