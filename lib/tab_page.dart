import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ex1/profile_page.dart';
import 'package:ex1/service_page.dart';
import 'package:ex1/main_page.dart';

import 'simple_state.dart';
import 'package:provider/provider.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  var _index = 0;
  var _pages = [
    MainPage(),
    ServicePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Mitrox',
              style: TextStyle(color: Colors.black),
            ),
            Consumer<SimpleState>(
              builder: (context, state, child) => Text(
                '${state.email}',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Service'),
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            title: Text('Me'),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
