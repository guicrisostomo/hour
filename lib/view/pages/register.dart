import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hour/view/widgets/button.dart';
import 'package:hour/view/widgets/textFieldConfirmPassword.dart';
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
  var txtConfirmPassword = TextEditingController();

  void register() {
    Navigator.popAndPushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: globals.primary,
                image: DecorationImage(
                  image: const AssetImage(
                    "lib/images/imgPeople.jpg",
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

            const SizedBox(height: 20),
    
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textFieldEmail('Email', txtEmail, context),
                  
                    const SizedBox(height: 10),
                  
                    TextFieldPassword(label: 'Senha', variavel: txtPassword, onFieldSubmitted: (value) => {}),

                    const SizedBox(height: 10),
                  
                    TextFieldConfirmPassword(label: 'Confirmar senha', variavel: txtConfirmPassword, onFieldSubmitted: (value) => register(), fieldPassword: txtPassword,),

                    const SizedBox(height: 20),

                    Container(
                      alignment: Alignment.centerRight,
                      child: button('Criar conta', 150, 50, register)
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}