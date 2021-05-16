import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(33, 33, 33, 1),
          centerTitle: true,
          title: Text(
            'Preferences',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    FontAwesomeIcons.bell,
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Text(
                    'Notifications',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.white,
                    activeTrackColor: Colors.green,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(33, 33, 33, 1),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    FontAwesomeIcons.moon,
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Text(
                    'Dark Theme',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 165.0),
                  child: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.white,
                    activeTrackColor: Colors.green,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(33, 33, 33, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
