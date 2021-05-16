import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id = 'home-page';
  @override
  Widget build(BuildContext context) {
    final newLogo = Hero(
      tag: 'logo',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    final welcome = Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          'Welcome Aditya',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ));

    final lorem = Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus molestie metus tortor, vel placerat magna imperdiet interdum. Maecenas eget tortor sodales, tristique libero et, pharetra erat. Quisque mollis convallis risus, at suscipit risus suscipit eu. In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi accumsan volutpat tellus, quis elementum libero facilisis eget. In hac habitasse platea dictumst. Donec nec nunc ante. Duis condimentum justo sit amet leo accumsan luctus. Sed at eros mauris. Suspendisse potenti. Aenean at nisi eget lectus varius vehicula. Proin fermentum vehicula accumsan.',
      style: TextStyle(color: Colors.white, fontSize: 18, height: 1.5),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: [newLogo, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
