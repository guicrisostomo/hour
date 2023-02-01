import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hour/globals.dart' as globals;
import 'package:hour/view/widgets/addRotine.dart';
import 'package:hour/view/widgets/button.dart';
import 'package:hour/view/widgets/listEdit.dart';

class Planning extends StatefulWidget {
  const Planning({super.key});

  @override
  State<Planning> createState() => _PlanningState();
}

class _PlanningState extends State<Planning> {
  static String daySelected = 'Domingo';

  static const List<String> daysOfWeek = [
    'Domingo',
    'Segunda',
    'Terça',
    'Quarta',
    'Quinta',
    'Sexta',
    'Sábado',
  ];

  
  
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
            
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: globals.primary,
              image: DecorationImage(
                image: const AssetImage(
                  "lib/images/imgCalendar.jpg",
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
                          'Planeje suas horas do dia',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                  
                        const SizedBox(height: 20),
                  
                        DropdownButtonFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.calendar_today),
                            hintText: 'Selecione o dia da semana',
                            filled: true,
                            fillColor: Colors.white,
                            errorStyle: TextStyle(color: Colors.yellow),
                          ),

                          items: daysOfWeek.map((map) {
                            return DropdownMenuItem(
                              value: map,
                              child: Text(map),
                            );
                          }).toList(),

                          onChanged: (value) {
                            setState(() {
                              daySelected = value.toString();
                            });
                          },
                          value: daySelected,
                        )
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

              const ListActivitiesEdit(),

              const SizedBox(height: 20),

              addRotine(() {
                Navigator.pushNamed(context, '/add');
              }),
            ],
          ),
        ),
      ),
    );
  }
}