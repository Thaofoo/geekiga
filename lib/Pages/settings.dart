import 'package:flutter/material.dart';
import 'package:geekiga/Pages/login.dart';
import 'package:geekiga/Pages/about.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class Settings extends StatelessWidget {
  const Settings({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey, //change your color here
        ),
        title: Text('Settings', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(0, 48, 48, 48),
        elevation: 0,
      ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Dark Mode", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.dark_mode, color: warnaEmas,),
              trailing: SwitchExample()
            ),
            ListTile(
              title: Text("About Us", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.privacy_tip_outlined, color: warnaEmas,),
              trailing: new Column(
                    children: <Widget>[
                      new Container(
                        child: new IconButton(
                          icon: new Icon(Icons.arrow_forward_ios, color: warnaEmas,),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const About()),
                            );
                          },
                        ),
                        margin: EdgeInsets.only(top: 5.0),
                      ),
                    ],
                  ),
            ),
          ],
        ),
    );
  }
}


class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}


class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: warnaEmas,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}