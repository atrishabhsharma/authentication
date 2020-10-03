import 'package:auth/Authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextField(
          controller: emailcontroller,
          decoration: InputDecoration(
            labelText: 'Email',
          ),
        ),
        TextField(
          controller: passcontroller,
          decoration: InputDecoration(
            labelText: 'Password',
          ),
        ),
        RaisedButton(
          onPressed: () {
            context.read<AuthenticationService>().signIn(
                email: emailcontroller.text.trim(),
                password: passcontroller.text.trim());
          },
          child: Text('Sign In'),
        )
      ],
    ));
  }
}
