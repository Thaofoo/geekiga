import 'package:flutter/material.dart';
import 'package:geekiga/pages/landing.dart';
import 'package:geekiga/pages/profile.dart';
import 'package:geekiga/pages/settings.dart';
import 'package:geekiga/pages/streamPlan.dart';
import 'package:provider/provider.dart';

import '../providers/authService.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class DrawerWidget extends StatelessWidget {
  // const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.1,
            0.9,
          ],
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
        ),
      ),
      child: Drawer(
        backgroundColor: Color.fromARGB(92, 0, 0, 0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _drawerHeader(),
            _drawerItem(
              icon: Icons.person,
              text: 'My Profile',
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
            ),
            _drawerItem(
              icon: Icons.list_alt,
              text: 'Stream Plan',
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                      builder: (context) => StreamPlan(
                            title: 'Stream Plan',
                          )),
                );
              },
            ),
            _drawerItem(
                icon: Icons.access_time,
                text: 'Transaction History',
                onTap: () => print('Tap Recent menu')),
            Divider(
              height: 25,
              thickness: 0.75,
              color: Color.fromARGB(151, 79, 79, 79),
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
              child: Text("Settings",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                  )),
            ),
            _drawerItem(
              icon: Icons.settings,
              text: 'Settings',
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
            ),
            _drawerItem(
              icon: Icons.logout_outlined,
              text: 'Log Out',
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      backgroundColor: Color.fromARGB(255, 34, 34, 34),
                      title: const Text(
                        "Sign Out",
                        style: TextStyle(color: Colors.white),
                      ),
                      content: const Text(
                        "Are you sure you want to sign out?",
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                                color: warnaEmas, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextButton(
                          onPressed: () async {
                            await authService.signOut();
                            Navigator.of(context)
                                .popUntil((route) => route.isFirst);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LandingPage()));
                          },
                          child: const Text(
                            "Confirm",
                            style: TextStyle(
                                color: warnaEmas, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
        color: Color.fromARGB(0, 26, 26, 26),
        border: Border(
            bottom: BorderSide(
                color: Color.fromARGB(150, 79, 79, 79), width: 0.75))),
    currentAccountPicture: ClipOval(
      child:
          Image(image: AssetImage('assets/images/edo.jpg'), fit: BoxFit.cover),
    ),
    accountName: Text(
      'Nathanael Erlando Putra',
      style: TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
    accountEmail: Text(
      'erlando.putra.21@gmail.com',
      style: TextStyle(
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(255, 139, 139, 139)),
    ),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: warnaEmas,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
