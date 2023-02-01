import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hour/globals.dart' as globals;
import 'package:hour/view/widgets/floatingButton.dart';
import 'package:hour/view/widgets/list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: globals.primary,
              
              decoration: BoxDecoration(
                color: globals.primary,
                image: DecorationImage(
                  image: const AssetImage(
                    "lib/images/imgBubbles.jpg",
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
                      'Olá, João',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      'Bem vindo de volta!',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  
                  Row(
                    children: [
                      Icon(
                        Icons.checklist,
                        size: 30,
                        color: globals.primary,
                      ),

                      const SizedBox(width: 10),
                            
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Você não tem tarefas para agora',
                              style: GoogleFonts.lato(
                                color: globals.primary,
                                fontSize: 18,
                              ),
                            ),
                      
                            const SizedBox(height: 5),
                      
                            Text(
                              'Das 14:00 às 15:00',
                              style: GoogleFonts.lato(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    children: [
                      Icon(
                        Icons.format_quote,
                        size: 30,
                        color: globals.primary,
                      ),

                      const SizedBox(width: 10),
                            
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\"Frase inspiradora\"',
                              style: GoogleFonts.lato(
                                color: globals.primary,
                                fontSize: 16,
                              ),
                            ),
                      
                            const SizedBox(height: 5),
                      
                            Text(
                              'Autor: João',
                              style: GoogleFonts.lato(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 20),

                  Text(
                    'Tarefas do dia',
                    style: GoogleFonts.lato(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const ListActivities(),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: floatingButton(context),
    );
  }
}