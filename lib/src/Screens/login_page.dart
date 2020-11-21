import 'package:flutter/material.dart';
import 'package:sign_in_flutter/src/MainWidgets/SocialSignBtn.dart';
import 'package:sign_in_flutter/src/methods/sign_in.dart';

import 'first_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50),
              SocialSignBtn(
                lable: 'Sign in with Google',
                logo: "assets/google_logo.png",
                onTap: () {
                  signInWithGoogle().then((result) {
                    if (result != null) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return FirstScreen();
                          },
                        ),
                      );
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
