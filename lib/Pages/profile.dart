import 'package:flutter/material.dart';
import 'package:geekiga/Pages/login.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class Profile extends StatelessWidget {
  const Profile({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text('Your Profile', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(0, 48, 48, 48),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout_outlined, color: Colors.grey),
            tooltip: 'Log Out',
            onPressed: () {
              showDialog(
                context: context, 
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    backgroundColor: Color.fromARGB(255, 42, 42, 42),
                    title: const Text("Sign Out", style: TextStyle(color: Colors.white),),
                    content: const Text("Are you sure you want to sign out?", style: TextStyle(color: Colors.white),),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: const Text("Cancel", style: TextStyle(color: Colors.white),),
                      ),
                      TextButton(onPressed: (){
                        Navigator.of(context).popUntil((route) => route.isFirst);
                        Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (BuildContext context) => Login()));
                      }, child: const Text("Confirm", style: TextStyle(color: Colors.white),),
                      ),
                    
                    ],
                  );
                }
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
                  foregroundImage: AssetImage('images/edo.jpg'),
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
                'Mochamad Taufiqul Putra',
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
                  ),
                ],
                )
              ),
            ],
          ),
        ),
    );
  }

}