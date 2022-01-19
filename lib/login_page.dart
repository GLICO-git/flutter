import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dart:io';

import 'main.dart';
import 'simple_state.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController =
      TextEditingController(text: 'your_name@gmail.com');
  final TextEditingController _passwordController =
      TextEditingController(text: 'input password');

  void _onLogin(BuildContext context) {
    final String email = _emailController.text;
    final SimpleState state = Provider.of<SimpleState>(context);
    state.setEmail(email);

    Navigator.pushNamed(context, MAIN_PAGE);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login Form',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 120),
            child: Column(
              children: <Widget>[
                Hero(
                    tag: 'heoro',
                    child: CircleAvatar(
                      child: Image.asset('assets/Mitrox_logo.png'),
                      backgroundColor: Colors.transparent,
                      radius: 58.0,
                    )),
                SizedBox(height: 45.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  initialValue: 'your_name@gmail.com',
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 45.0),
                TextFormField(
                  initialValue: 'input password',
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Log In'),
                      onPressed: () => _onLogin(context),
                    ),
                    SizedBox(height: 10.0),
                    RaisedButton(
                      child: Text('Cancel'),
                      onPressed: () {
                        exit(0);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
