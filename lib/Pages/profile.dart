import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.purple,
//         ),
//         home: profile2());
//   }
// }

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class Profile extends StatelessWidget {
  const Profile({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text('Your Profile'),
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
                  foregroundImage: NetworkImage("https://seeklogo.com/images/A/among-us-logo-315EB5A5DA-seeklogo.com.png"),
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
                style: TextStyle(
                  color: warnaEmas,
                  letterSpacing: 2
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Mochamad Taufiqul Putri',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Email',
                style: TextStyle(
                  color: warnaEmas,
                  letterSpacing: 2
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 300,
                // padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 260,
                    child: Text(
                      "erlando.putra.21@gmail.com",
                      overflow: TextOverflow.ellipsis,
                      
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        letterSpacing: 1
                      ),
                    ),
                  )
                ],
                )
              )
            ],
          ),
        ),
    );
  }

}