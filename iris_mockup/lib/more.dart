import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iris_mockup/tabView.dart';
import 'settings.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(33, 33, 33, 1),
          title: Text(
            'P   I   R   I   S',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 30,
                  color: Color.fromRGBO(47, 47, 47, 1),
                  child: Center(
                    child: Text(
                      'v1.0.8',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 500,
                  child: ListView(
                    children: ListTile.divideTiles(
                      color: Color.fromRGBO(39, 39, 39, 1),
                      context: context,
                      tiles: [
                        BuildListTile(
                          Icons.settings,
                          'Preferences',
                        ),
                        BuildListTile(
                          FontAwesomeIcons.user,
                          'Account',
                        ),
                        BuildListTile(
                          Icons.info_outline,
                          'About PIRIS',
                        ),
                        BuildListTile(
                          Icons.mail,
                          'Support',
                        ),
                        BuildListTile(
                          FontAwesomeIcons.boxOpen,
                          'Open Source Libraries',
                        ),
                        BuildListTile(
                          Icons.verified_user_rounded,
                          'Privacy Policy',
                        ),
                        BuildListTile(
                          FontAwesomeIcons.balanceScale,
                          'Terms of Service',
                        ),
                        ListTile(
                          title: Text(''),
                        ),
                      ],
                    ).toList(),
                  ),
                ),
              ],
            ),
            HelpButton(),
          ],
        ),
      ),
    );
  }
}

class BuildListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  BuildListTile(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Settings()));
      },
      title: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
