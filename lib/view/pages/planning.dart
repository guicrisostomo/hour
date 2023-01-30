import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hour/globals.dart' as globals;
import 'package:hour/view/widgets/button.dart';
import 'package:hour/view/widgets/listEdit.dart';

class Planning extends StatefulWidget {
  const Planning({super.key});

  @override
  State<Planning> createState() => _PlanningState();
}

class _PlanningState extends State<Planning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: AppBar(
          title: Text(
            'Planejamento',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: globals.primary,
      
          flexibleSpace: Center(
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
                        'Planeje suas horas do dia',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          button("Diário", 0, 0, () => {},),

                          const SizedBox(width: 10),

                          button("Semanal", 0, 0, () => {},),
                        ]
                      )
                    ]
                  ),
                ),
              ]
            ),
          )
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const ListActivitiesEdit(),
            ],
          ),
        ),
      ),
    );
  }
}