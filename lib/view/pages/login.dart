import 'package:flutter/material.dart';
import 'package:hour/view/widgets/textFieldEmail.dart';
import 'package:hour/view/widgets/textFieldPassword.dart';
import 'package:hour/globals.dart' as globals;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var txtEmail = TextEditingController();
  var txtPassword = TextEditingController();

  void logIn(a) {
    
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(scaffoldBackgroundColor: globals.secundary),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(
                "lib/images/background.jpg",
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(globals.primary.withOpacity(0.8), BlendMode.modulate),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textFieldEmail('Email', txtEmail, context),
              
                const SizedBox(height: 10),
              
                TextFieldPassword(label: 'Senha', variavel: txtPassword, onFieldSubmitted: logIn),
              ],
            ),
          ),
        ),
      ),
    );
  }
}