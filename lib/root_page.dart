import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'simple_state.dart';

class RootPage extends StatelessWidget {
  _showTabPage(BuildContext context) => Navigator.pushNamed(context, TAB_PAGE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<SimpleState>(
                builder: (context, state, child) {
                  return Text('로그인 성공: ${state.email}');
                },
              ),
              SizedBox(height: 45.0),
              RaisedButton(
                onPressed: () => _showTabPage(context),
                child: Text('Go to Menu'),
              ),
            ]),
      ),
    );
  }
}
