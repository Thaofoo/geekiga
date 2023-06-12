import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'editProfile.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

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
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Edit Your Profile',
            onPressed: () {
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                foregroundImage: NetworkImage(_firebaseAuth
                        .currentUser!.photoURL ??
                    'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
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
              _firebaseAuth.currentUser!.displayName ?? 'No Name',
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
                        _firebaseAuth.currentUser!.email!,
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
