import 'package:flutter/material.dart';
import 'package:geekiga/main.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 0, 0, 0),
      bottomNavigationBar: null,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey, //change your color here
        ),
        title: const Text(
          'Settings',
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(0, 48, 48, 48),
        elevation: 0,
      ),
      body: ListView(
        children: const [
          ListTile(
              title: Text(
                "Dark Mode",
              ),
              leading: Icon(
                Icons.dark_mode,
                color: warnaEmas,
              ),
              trailing: SwitchExample()),
          // ListTile(
          //   title: Text(
          //     "About Us",
          //   ),
          //   leading: Icon(
          //     Icons.privacy_tip_outlined,
          //     color: warnaEmas,
          //   ),
          //   trailing: new Column(
          //     children: <Widget>[
          //       new Container(
          //         child: new IconButton(
          //           icon: new Icon(
          //             Icons.arrow_forward_ios,
          //             color: warnaEmas,
          //           ),
          //           onPressed: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(builder: (context) => const About()),
          //             );
          //           },
          //         ),
          //         margin: EdgeInsets.only(top: 5.0),
          //       ),
          //     ],
          //   ),
          // ),
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
      activeColor: warnaEmas,
      value: isSwitched.value,
      onChanged: (newValue) {
        setState(() {
          isSwitched.value = newValue;
        });
        print(isSwitched.value);
      },
    );
  }
}
