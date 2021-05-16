import 'package:flutter/material.dart';
import 'package:fireworks/fireworks.dart';
import 'package:gradient_text/gradient_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Fireworks(
              numberOfExplosions: 3,
              delay: 1,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Center(
                    child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 0, end: 70),
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                      builder:
                          (BuildContext context, double size, Widget child) {
                        return GradientText(
                          'Thank You',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro Rounded',
                            fontSize: size,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.blue,
                              Colors.green,
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Center(
                  child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: 130),
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    builder: (BuildContext context, double size, Widget child) {
                      return GradientText(
                        '20K',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SF Pro Rounded',
                          fontSize: size,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue,
                            Colors.green,
                          ],
                        ),
                      );
                    },
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
