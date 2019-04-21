import 'package:flutter/material.dart';
import 'package:firebase/services/authentication.dart';

class HomePage extends StatelessWidget {
  HomePage({this.auth, this.onSignOut});
  final BaseAuth auth;
  final VoidCallback onSignOut;

  @override
  Widget build(BuildContext context) {
    void _signOut() async {
      try {
        await auth.signOut();
      } catch (e) {
        print(e);
      }
    }

    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          new FlatButton(
            onPressed: _signOut,
            child: new Text('Log out',
                style: new TextStyle(fontSize: 17.0, color: Colors.white)),
          )
        ],
      ),
      body: new Center(
        child: new Text('Welcome', style: new TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
