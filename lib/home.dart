import 'package:auth/Authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Home'),
          ),
          RaisedButton(onPressed: () {
            context.read<AuthenticationService>().signOut();
          })
        ],
      ),
    );
  }
}
