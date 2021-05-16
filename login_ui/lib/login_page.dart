import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_ui/home_page.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'logo',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'hello@gmail.com',
      decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          )),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      initialValue: 'some password',
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          )),
    );

    final loginButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.lightBlue,
        padding: EdgeInsets.symmetric(vertical: 16),
        shadowColor: Colors.lightBlueAccent.shade100,
        primary: Colors.lightBlue,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(HomePage.id);
      },
      child: Text(
        'Login',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );

    final forgotLabel = TextButton(
      onPressed: () {},
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.black54),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: [
            logo,
            SizedBox(height: 48),
            email,
            SizedBox(height: 48),
            password,
            SizedBox(height: 48),
            loginButton,
            SizedBox(height: 48),
            forgotLabel,
          ],
        ),
      ),
    );
  }
}
