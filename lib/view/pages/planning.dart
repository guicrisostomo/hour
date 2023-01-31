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
  static bool isPlanningDay = true;
  static String daySelected = 'Domingo';

  List<Widget> dayWeek() {
    return <Widget> [
      (!isPlanningDay) ?
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceBetween,
          spacing: 20,
          runSpacing: 20,

          children: [
            button('Dom', 40, 40, () => {
              setState(() {
                daySelected = 'Domingo';
              })
            },),
        
            button('Seg', 40, 40, () => {
              setState(() {
                daySelected = 'Segunda';
              })
            },),
        
            button('Ter', 40, 40, () => {
              setState(() {
                daySelected = 'Terça';
              })
            },),
        
            button('Qua', 40, 40, () => {
              setState(() {
                daySelected = 'Quarta';
              })
            },),
        
            button('Qui', 40, 40, () => {
              setState(() {
                daySelected = 'Quinta';
              })
            },),
        
            button('Sex', 40, 40, () => {
              setState(() {
                daySelected = 'Sexta';
              })
            },),
        
            button('Sab', 40, 40, () => {
              setState(() {
                daySelected = 'Sábado';
              })
            },),
          ],
        )
      : const SizedBox.shrink()
    ];
  }

  List<Widget> dayWeekSelect() {
    return <Widget> [
      (!isPlanningDay) ?
        Column(
          children: [
            Text(
              daySelected,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      : const SizedBox.shrink()
    ];
  }
  
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
                          button("Diário", 40, 40, () => {
                            setState(() {
                              isPlanningDay = true;
                            })
                          },),

                          const SizedBox(width: 10),

                          button("Semanal", 40, 40, () => {
                            setState(() {
                              isPlanningDay = false;
                            })
                          },),
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

              ...dayWeekSelect(),

              const ListActivitiesEdit(),

              const SizedBox(height: 20),

              ...dayWeek(),
            ],
          ),
        ),
      ),
    );
  }
}