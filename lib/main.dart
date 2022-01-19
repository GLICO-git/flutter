import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ex1/simple_state.dart';
import 'package:ex1/login_page.dart';
import 'package:ex1/main_page.dart';
import 'package:ex1/tab_page.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            SimpleState();
          },
          child: MyApp(),
        ),
      ],
    ));

const String ROOT_PAGE = '/';
const String MAIN_PAGE = '/main';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mitrox Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: ROOT_PAGE,
      routes: {
        ROOT_PAGE: (context) => TabPage(),
        //MAIN_PAGE: (context) => MainPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
