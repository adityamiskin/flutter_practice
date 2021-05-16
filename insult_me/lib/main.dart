import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import 'package:glassmorphism/glassmorphism.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(225, 229, 242, 1),
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(2, 43, 58, 1),
            title: Text(
              "INSULT ME!!",
              style: GoogleFonts.notoSans(
                fontSize: 35,
              ),
            ),
            centerTitle: true,
          ),
          body: insult(),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class insult extends StatefulWidget {
  @override
  _insultState createState() => _insultState();
}

// ignore: camel_case_types
class _insultState extends State<insult> {
  String name = "Click to insult your self!";
  void ins() {
    setState(() {
      int k = Random().nextInt(8) + 1;
      if (k == 1) {
        name = "You're are a reason God created the middle finger.";
      }
      if (k == 2) {
        name = "You're a grey sprinkle on a rainbow cupcake.";
      }
      if (k == 3) {
        name =
            "If your brain was dynamite,there wouldn't be enough to blow your hat off.";
      }
      if (k == 4) {
        name = "You're as useless as a 'ueue' in a 'queue'.";
      }
      if (k == 5) {
        name =
            "You must have been born on a highway coz thats where all the accidents happen.";
      }
      if (k == 6) {
        name =
            "When you were born the doctor threw you out of your window and the window threw you back.";
      }
      if (k == 7) {
        name =
            "If I wanted to kill myself I will climb your ego and jump to your IQ.";
      }
      if (k == 8) {
        name = "You are as important as a semi-colon in a Python cde.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Image.asset(
        //   'assets/2.jpg',
        //   fit: BoxFit.fill,
        // ),
        Center(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "$name",
                style:
                    GoogleFonts.notoSans(fontSize: 30.0, color: Colors.black),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 60,
          right: 60,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromRGBO(191, 219, 247, 1),
            ),
            height: 80,
            width: 270,
            child: TextButton(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Icon(
                      FontAwesomeIcons.skull,
                      color: Colors.blue,
                      size: 40,
                    ),
                  ),
                  Text(
                    "Insult me",
                    style: GoogleFonts.notoSans(
                        fontSize: 35.0, color: Colors.black),
                  ),
                ],
              ),
              onPressed: ins,
            ),
          ),
        ),
      ],
    );
  }
}
