import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hour/view/widgets/button.dart';
import 'package:hour/view/widgets/textFieldEmail.dart';
import 'package:hour/view/widgets/textFieldPassword.dart';
import 'package:hour/globals.dart' as globals;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var txtEmail = TextEditingController();
  var txtPassword = TextEditingController();

  void register() {
    Navigator.popAndPushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(scaffoldBackgroundColor: globals.secundary),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,

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
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Criar conta',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
              
                    const SizedBox(height: 5),
              
                    Text(
                      'Já possui uma conta ?',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      alignment: Alignment.centerRight,
                      child: button('Entrar', 100, 50, () => Navigator.popAndPushNamed(context, '/login'))
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      textFieldEmail('Email', txtEmail, context),
                    
                      const SizedBox(height: 10),
                    
                      TextFieldPassword(label: 'Senha', variavel: txtPassword, onFieldSubmitted: (value) => register()),

                      const SizedBox(height: 20),

                      Container(
                        alignment: Alignment.centerRight,
                        child: button('Criar conta', 200, 50, register)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}