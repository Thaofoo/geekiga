import 'package:flutter/material.dart';
import 'package:geekiga/Pages/profile.dart';
import 'package:geekiga/Pages/login.dart';
import 'package:geekiga/Pages/settings.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);


// void main() {
//      runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "BelajarFlutter",
//       home: BelajarNavigationDrawer(),
//       )
//      );
// }
// class BelajarNavigationDrawer extends StatelessWidget {
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//             title: Text(""),
//             backgroundColor: Colors.deepPurple,
//         ),
//         drawer: DrawerWidget(),
//         body: Center(
//                child: Text('',
//                style: TextStyle(fontSize: 20))),
//            );
//      }
// }

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 26, 26, 26),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(
          
          ),
          Divider(height: 25, thickness: 3, color: Colors.white),
          _drawerItem(
            icon: Icons.person,
            text: 'My Profile',
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },),
          _drawerItem(
            icon: Icons.list_alt,
            text: 'Stream Plan',
            onTap: () => print('Tap Shared menu')),
          _drawerItem(
            icon: Icons.access_time,
            text: 'Recent',
            onTap: () => print('Tap Recent menu')),
          Divider(height: 25, thickness: 1, color: Colors.grey, indent: 20, endIndent: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Settings",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
                        )),
          ),
          _drawerItem(
            icon: Icons.settings,
            text: 'Settings',
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
            ),
          // _drawerItem(
          //   // icon: Icons.perm_device_info,
          //   icon: Icons.privacy_tip_outlined,
          //   text: 'About us',
          //   onTap: () => print('Tap Family menu')
          // ),
            _drawerItem(
            icon: Icons.logout_outlined,
            text: 'Log Out',
            onTap: () {
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
            },),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: Color.fromARGB(255, 26, 26, 26)),
      currentAccountPicture: ClipOval(
             child: Image(
                 image: AssetImage('images/edo.jpg'),
                 fit: BoxFit.cover),
             ),
      accountName: Text('Nathanael Erlando Putra', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
      accountEmail: Text('erlando.putra.21@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white  ),),
    );
}

Widget _drawerItem(
    {required IconData icon, required String text, required GestureTapCallback onTap}) {
       return ListTile(
              title: Row(
              children: <Widget>[
                  Icon(icon, color: warnaEmas,),
                  Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                            text,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                 ),
             ],
          ),
          onTap: onTap,
    );
}
