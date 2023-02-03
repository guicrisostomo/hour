import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hour/globals.dart' as globals;
import 'package:hour/view/widgets/TextField.dart';
import 'package:hour/view/widgets/button.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  bool isShowBasicInformation = false;
  Icon iconBasicInformation = const Icon(Icons.arrow_right_rounded);

  bool isShowCustomDate = false;
  Icon iconCustomDate = const Icon(Icons.arrow_right_rounded);

  bool isShowGoalsRotine = false;
  Icon iconGoalsRotine = const Icon(Icons.arrow_right_rounded);

  static List listDaysCheckedValue = [false, false, false, false, false, false, false];

  static bool isDailyGoal = true;

  @override
  Widget build(BuildContext context) {
    var txtName = TextEditingController();
    var txtDescription = TextEditingController();
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
    var txtNameRotine = TextEditingController();
    var txtDescriptionRotine = TextEditingController();
    
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

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(210),
        child: AppBar(
          title: Text(
            'Editar rotina',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),

          centerTitle: true,
          backgroundColor: Colors.white,

          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: globals.primary,
              image: DecorationImage(
                image: const AssetImage('lib/images/imgPlanning.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(globals.primary.withOpacity(0.8), BlendMode.modulate),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Atualize informações da sua rotina',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                    
                  const SizedBox(height: 5),
                      
                  Text(
                    'Aui você pode editar todas as informações referentes a sua rotina',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Text(
                        'Atualize informações básicas da sua rotina',
                        style: GoogleFonts.lato(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  IconButton(
                    icon: iconBasicInformation,
                    iconSize: 50,
                    onPressed: () {
                      setState(() {
                        isShowBasicInformation = !isShowBasicInformation;
                      });
                        
                      if (isShowBasicInformation) {
                        setState(() {
                          iconBasicInformation = const Icon(Icons.arrow_drop_down_rounded);
                        });
                      } else {
                        setState(() {
                          iconBasicInformation = const Icon(Icons.arrow_right_rounded);
                        });
                      }
                    },
                  ),
                ],
              ),
        
              const SizedBox(height: 10),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Atualize informações como nome e descrição da sua rotina',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
              ),
        
              const SizedBox(height: 20),
        
              if (isShowBasicInformation)
                Column(
                  children: [
                    textField('Nome da rotina', txtName, context),
    
                    const SizedBox(height: 10),
        
                    textField('Descrição da rotina', txtDescription, context),
        
                    button('Continuar', 200, 50, () {
                      Navigator.pushNamed(context, '/add/custom_date_rotine');
                    })
                  ],
                ),

              const SizedBox(height: 20),

              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Text(
                        'Selecione os dias/horarios que deseja realizar a rotina',
                        style: GoogleFonts.lato(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  IconButton(
                    icon: iconCustomDate,
                    iconSize: 50,
                    onPressed: () {
                      setState(() {
                        isShowCustomDate = !isShowCustomDate;
                      });
                        
                      if (isShowCustomDate) {
                        setState(() {
                          iconCustomDate = const Icon(Icons.arrow_drop_down_rounded);
                        });
                      } else {
                        setState(() {
                          iconCustomDate = const Icon(Icons.arrow_right_rounded);
                        });
                      }
                    },
                  ),
                ],
              ),
        
              const SizedBox(height: 10),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Atualize os dias e horarios que deseja realizar a rotina',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
              ),
        
              const SizedBox(height: 20),
        
              if (isShowCustomDate)
                Column(
                  children: [
                    SwitchListTile(
                      inactiveTrackColor: const Color.fromARGB(255, 235, 66, 54),
                      inactiveThumbColor: const Color.fromARGB(255, 189, 52, 42),

                      activeTrackColor: const Color.fromARGB(255, 86, 196, 90),
                      activeColor: const Color.fromARGB(255, 42, 97, 44),

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
                      controlAffinity: ListTileControlAffinity.platform,
                    ),
                
                    ShowHourDay(0, txtForSun, txtUntilSun),
                
                    const SizedBox(height: 10),
                
                    SwitchListTile(
                      inactiveTrackColor: const Color.fromARGB(255, 235, 66, 54),
                      inactiveThumbColor: const Color.fromARGB(255, 189, 52, 42),

                      activeTrackColor: const Color.fromARGB(255, 86, 196, 90),
                      activeColor: const Color.fromARGB(255, 42, 97, 44),

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
                      controlAffinity: ListTileControlAffinity.platform,
                    ),
                
                    ShowHourDay(1, txtForMon, txtUntilMon),
                
                    const SizedBox(height: 10),
                
                    SwitchListTile(
                      inactiveTrackColor: const Color.fromARGB(255, 235, 66, 54),
                      inactiveThumbColor: const Color.fromARGB(255, 189, 52, 42),

                      activeTrackColor: const Color.fromARGB(255, 86, 196, 90),
                      activeColor: const Color.fromARGB(255, 42, 97, 44),

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
                      controlAffinity: ListTileControlAffinity.platform,
                    ),
                
                    ShowHourDay(2, txtForTue, txtUntilTue),
                
                    const SizedBox(height: 10),
                
                    SwitchListTile(
                      inactiveTrackColor: const Color.fromARGB(255, 235, 66, 54),
                      inactiveThumbColor: const Color.fromARGB(255, 189, 52, 42),

                      activeTrackColor: const Color.fromARGB(255, 86, 196, 90),
                      activeColor: const Color.fromARGB(255, 42, 97, 44),

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
                      controlAffinity: ListTileControlAffinity.platform,
                    ),
                
                    ShowHourDay(3, txtForWed, txtUntilWed),
                
                    const SizedBox(height: 10),
                
                    SwitchListTile(
                      inactiveTrackColor: const Color.fromARGB(255, 235, 66, 54),
                      inactiveThumbColor: const Color.fromARGB(255, 189, 52, 42),

                      activeTrackColor: const Color.fromARGB(255, 86, 196, 90),
                      activeColor: const Color.fromARGB(255, 42, 97, 44),

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
                      controlAffinity: ListTileControlAffinity.platform,
                    ),
                
                    ShowHourDay(4, txtForThu, txtUntilThu),
                
                    const SizedBox(height: 10),
                
                    SwitchListTile(
                      inactiveTrackColor: const Color.fromARGB(255, 235, 66, 54),
                      inactiveThumbColor: const Color.fromARGB(255, 189, 52, 42),

                      activeTrackColor: const Color.fromARGB(255, 86, 196, 90),
                      activeColor: const Color.fromARGB(255, 42, 97, 44),

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
                      controlAffinity: ListTileControlAffinity.platform,
                    ),
                
                    ShowHourDay(5, txtForFri, txtUntilFri),
                
                    const SizedBox(height: 10),
                
                    SwitchListTile(
                      inactiveTrackColor: const Color.fromARGB(255, 235, 66, 54),
                      inactiveThumbColor: const Color.fromARGB(255, 189, 52, 42),

                      activeTrackColor: const Color.fromARGB(255, 86, 196, 90),
                      activeColor: const Color.fromARGB(255, 42, 97, 44),

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
                      controlAffinity: ListTileControlAffinity.platform,
                    ),
                
                    ShowHourDay(6, txtForSat, txtUntilSat),
              
                    const SizedBox(height: 20),
              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                        button('Voltar', 50, 50, () => {
                          Navigator.pop(context)
                        }),
              
                        const SizedBox(width: 10),
              
                        button('Continuar', 50, 50, () => {
                          Navigator.pushNamed(context, '/add/custom_date_rotine/add_goals')
                        }),
                      ],
                    ),
                  ],
                ),

              const SizedBox(height: 20),

              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Text(
                        'Atualize informações básicas da sua rotina',
                        style: GoogleFonts.lato(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  IconButton(
                    icon: iconGoalsRotine,
                    iconSize: 50,
                    onPressed: () {
                      setState(() {
                        isShowGoalsRotine = !isShowGoalsRotine;
                      });
                        
                      if (isShowGoalsRotine) {
                        setState(() {
                          iconGoalsRotine = const Icon(Icons.arrow_drop_down_rounded);
                        });
                      } else {
                        setState(() {
                          iconGoalsRotine = const Icon(Icons.arrow_right_rounded);
                        });
                      }
                    },
                  ),
                ],
              ),
        
              const SizedBox(height: 10),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Modifique ou crie objetivos para sua rotina',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
              ),
        
              const SizedBox(height: 20),
        
              if (isShowGoalsRotine)
                Column(
                  children: [
                    textField('Nome', txtNameRotine, context),
        
                    const SizedBox(height: 10),
              
                    textField('Descrição', txtDescriptionRotine, context),

                    const SizedBox(height: 10),

                    SwitchListTile(
                      value: isDailyGoal,
                      onChanged: (value) => {
                        setState(() {
                          isDailyGoal = value!;
                        })
                      },
                      title: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'É um objetivo diário ?',
                          style: GoogleFonts.lato(
                            fontSize: 18,
                          ),
                        )
                      ),
                      controlAffinity: ListTileControlAffinity.platform,
                    ),
              
                    const SizedBox(height: 20),
              
                    button('Adicionar objetivo', 50, 50, () {
                      
                    }),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}