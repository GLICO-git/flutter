//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ex1/simple_state.dart';
import 'package:ex1/login_page.dart';
import 'package:ex1/tab_page.dart';
import 'package:ex1/root_page.dart';

void main() => runApp(loginFormApp);

var loginFormApp = ChangeNotifierProvider(
  create: (context) => SimpleState(),
  child: MyApp(),
);

const String LOGIN_PAGE = '/';
const String ROOT_PAGE = '/main';
const String TAB_PAGE = '/tab';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mitrox Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: LOGIN_PAGE,
      routes: {
        LOGIN_PAGE: (context) => LoginPage(),
        ROOT_PAGE: (context) => RootPage(),
        TAB_PAGE: (context) => TabPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
