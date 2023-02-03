import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hour/globals.dart' as globals;
import 'package:hour/view/widgets/TextField.dart';
import 'package:hour/view/widgets/button.dart';
import 'package:hour/view/widgets/listEdit.dart';

class GoalsRotine extends StatefulWidget {
  const GoalsRotine({super.key});

  @override
  State<GoalsRotine> createState() => _GoalsRotineState();
}

class _GoalsRotineState extends State<GoalsRotine> {
  var txtName = TextEditingController();
  var txtDescription = TextEditingController();
  static bool isDailyGoal = true;

  var formKey = GlobalKey<FormState>();
  bool autoValidation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(210),
        child: AppBar(
          title: Text(
            'Adicionar objetivo a rotina',
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
                image: const AssetImage('lib/images/imgGoal.jpg'),
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
                    'Configure o objetivo da rotina',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                    
                  const SizedBox(height: 5),
                      
                  Text(
                    'Etapa opcional',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  button('Pular etapa', 50, 50, () {
                    Navigator.popUntil(context, ModalRoute.withName('/home'));
                  }),
                ],
              ),
            )
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            autovalidateMode: autoValidation ? AutovalidateMode.always : AutovalidateMode.disabled,
            
            child: Column(
              children: [
                Text(
                  'Informe o nome e descrição do objetivo',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
          
                const SizedBox(height: 10),
          
                Text(
                  'Adicione objetivos a rotina para que você possa acompanhar o seu progresso (ex: ler 1 capítulo de um livro por dia)',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                  
                const SizedBox(height: 20),
                  
                textField('Nome', txtName, context),
                  
                const SizedBox(height: 10),
                  
                textField('Descrição', txtDescription, context),
          
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
          
                const SizedBox(height: 20),
          
                Text(
                  'Objetivos adicionados',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
          
                const SizedBox(height: 10),
          
                const ListActivitiesEdit(),
          
                const SizedBox(height: 50),
                  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  
                  children: [
                    button('Voltar', 50, 50, () {
                      Navigator.pop(context);
                    }),
                  
                    const SizedBox(width: 10),
                  
                    button('Finalizar', 50, 50, () {
                      Navigator.popUntil(context, ModalRoute.withName('/home'));
                    }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}