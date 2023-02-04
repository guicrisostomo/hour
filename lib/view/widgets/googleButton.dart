// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hour/controller/firabase/auth.dart';
import 'package:hour/globals.dart' as globals;

class GoogleAuthButton extends StatefulWidget {
  @override
  _GoogleAuthButtonState createState() => _GoogleAuthButtonState();
}

class _GoogleAuthButtonState extends State<GoogleAuthButton> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(color: globals.primary, spreadRadius: 3),
        ],
      ),

      child: _isSigningIn
        ? CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(globals.primary),
          )
        : OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            onPressed: () async {
              
              setState(() {
                _isSigningIn = true;
              });
    
              await LoginController().signInGoogle(context);
    
              setState(() {
                _isSigningIn = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  const Image(
                    image: AssetImage("lib/images/google_logo.png"),
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Entrar com Google',
                      style: TextStyle(
                        fontSize: 24,
                        color: globals.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
    );
  }
}