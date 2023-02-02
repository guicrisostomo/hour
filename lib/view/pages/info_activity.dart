import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hour/globals.dart' as globals;
import 'package:hour/view/widgets/button.dart';

class InfoActivity extends StatefulWidget {
  const InfoActivity({super.key});

  @override
  State<InfoActivity> createState() => _InfoActivityState();
}

class _InfoActivityState extends State<InfoActivity> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: AppBar(
          title: Text(
            'Informações da atividade',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: globals.primary,
              image: DecorationImage(
                image: const AssetImage(
                  "lib/images/imgGoal.jpg",
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(globals.primary.withOpacity(0.8), BlendMode.modulate),
              ),
            ),
            
            child: Center(
              child: Wrap(
                direction: Axis.horizontal,
                  
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'SFSDFSDFSDF',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                  
                        const SizedBox(height: 5),
                  
                        Text(
                          'De segunda à sexta, das 14h às 18h',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ]
                    ),
                  ),
                ]
              ),
            ),
          )
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Descrição',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              
              const SizedBox(height: 10),

              Text(
                'JKGbkgfsdksj fdgskdf juagksjgfadskjf gsdafh kasdf sfhjkasdf sf gasjhfgsjfhgsdfjhsgdf',
                style: GoogleFonts.lato(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                'Objetivo do dia',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              CheckboxListTile(
                value: false,
                onChanged: (value) {
                  value!;
                },
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Objetivo 1',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      'Descrição fjhakjsfd',
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

                controlAffinity: ListTileControlAffinity.leading,
              ),

              const SizedBox(height: 10),

              Text(
                'Objetivos da semana',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              CheckboxListTile(
                value: false,
                onChanged: (value) {
                  value!;
                },
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Objetivo 1',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      'Descrição fjhakjsfd',
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

                controlAffinity: ListTileControlAffinity.leading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}