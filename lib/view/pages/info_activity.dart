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
  static List listDaysCheckedValue = [false, false, false, false, false, false, false];

  Widget ShowHourDay(int day, TextEditingController? controllerFor, TextEditingController? controllerUntil) {
    return listDaysCheckedValue[day] ?
      Column(
        children: [
          Row(
            children: [

              const SizedBox(width: 10),

              SizedBox(
                width: 100,
                child: TextField(
                  controller: controllerFor,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'De',
                  ),
                ),
              ),

              const SizedBox(width: 10),

              Text(
                'às',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),

              const SizedBox(width: 10),

              SizedBox(
                width: 100,
                child: TextField(
                  controller: controllerUntil,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Até',
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    : const SizedBox(height: 0);
  }

  @override
  Widget build(BuildContext context) {
    var txtForSun = TextEditingController();
    var txtUntilSun = TextEditingController();
    var txtForMon = TextEditingController();
    var txtUntilMon = TextEditingController();
    var txtForTue = TextEditingController();
    var txtUntilTue = TextEditingController();
    var txtForWed = TextEditingController();
    var txtUntilWed = TextEditingController();
    var txtForThu = TextEditingController();
    var txtUntilThu = TextEditingController();
    var txtForFri = TextEditingController();
    var txtUntilFri = TextEditingController();
    var txtForSat = TextEditingController();
    var txtUntilSat = TextEditingController();

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

              CheckboxListTile(
                value: listDaysCheckedValue[0],
                onChanged: (value) => {
                  setState(() {
                    listDaysCheckedValue[0] = value!;
                  })
                },
                title: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Domingo',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                  )
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
      
              ShowHourDay(0, txtForSun, txtUntilSun),
      
              const SizedBox(height: 10),
      
              CheckboxListTile(
                value: listDaysCheckedValue[1],
                onChanged: (value) => {
                  setState(() {
                    listDaysCheckedValue[1] = value!;
                  })
                },
                title: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Segunda',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                  )
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
      
              ShowHourDay(1, txtForMon, txtUntilMon),
      
              const SizedBox(height: 10),
      
              CheckboxListTile(
                value: listDaysCheckedValue[2],
                onChanged: (value) => {
                  setState(() {
                    listDaysCheckedValue[2] = value!;
                  })
                },
                title: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Terça',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                  )
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
      
              ShowHourDay(2, txtForTue, txtUntilTue),
      
              const SizedBox(height: 10),
      
              CheckboxListTile(
                value: listDaysCheckedValue[3],
                onChanged: (value) => {
                  setState(() {
                    listDaysCheckedValue[3] = value!;
                  })
                },
                title: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quarta',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                  )
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
      
              ShowHourDay(3, txtForWed, txtUntilWed),
      
              const SizedBox(height: 10),
      
              CheckboxListTile(
                value: listDaysCheckedValue[4],
                onChanged: (value) => {
                  setState(() {
                    listDaysCheckedValue[4] = value!;
                  })
                },
                title: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quinta',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                  )
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
      
              ShowHourDay(4, txtForThu, txtUntilThu),
      
              const SizedBox(height: 10),
      
              CheckboxListTile(
                value: listDaysCheckedValue[5],
                onChanged: (value) => {
                  setState(() {
                    listDaysCheckedValue[5] = value!;
                  })
                },
                title: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sexta',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                  )
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
      
              ShowHourDay(5, txtForFri, txtUntilFri),
      
              const SizedBox(height: 10),
      
              CheckboxListTile(
                value: listDaysCheckedValue[6],
                onChanged: (value) => {
                  setState(() {
                    listDaysCheckedValue[6] = value!;
                  })
                },
                title: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sábado',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                    ),
                  )
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
      
              ShowHourDay(6, txtForSat, txtUntilSat),
            ],
          ),
        ),
      ),
    );
  }
}