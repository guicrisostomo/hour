import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hour/view/widgets/button.dart';
import 'package:hour/globals.dart' as globals;

class Presentation extends StatefulWidget {
  const Presentation({super.key});

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  var txtEmail = TextEditingController();
  var txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            children: [

              Image.asset('lib/images/iconMyHour.png', width: 200, height: 200),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Controle seu tempo de maneira rápida e fácil',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),

              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
            
                children: [
                  button('Cadastrar', 150, 50, () => Navigator.popAndPushNamed(context, '/register')),
                  button('Entrar', 150, 50, () => Navigator.popAndPushNamed(context, '/login')),
                  
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}