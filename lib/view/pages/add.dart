import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hour/globals.dart' as globals;
import 'package:hour/view/widgets/button.dart';
import 'package:hour/view/widgets/textField.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {

  var formKey = GlobalKey<FormState>();

  bool autoValidation = false;

  @override
  Widget build(BuildContext context) {
    var txtNome = TextEditingController();
    var txtDescricao = TextEditingController();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(210),
        child: AppBar(
          title: Text(
            'Adicionar rotina',
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
                    'Adicione uma nova rotina ao seu cronograma',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                    
                  const SizedBox(height: 5),
                      
                  Text(
                    'Adicione novas rotinas personalizando o nome, objetivos, duração e o dia da semana que deseja realizar a rotina.',
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
      
              Text(
                'Informe nome e descrição (opcional) da rotina',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
      
              const SizedBox(height: 10),
      
              Form(
                key: formKey,
                autovalidateMode: autoValidation ? AutovalidateMode.always : AutovalidateMode.disabled,
                child: textField('Nome da rotina', txtNome, context)
              ),
      
              const SizedBox(height: 10),
      
              textField('Descrição da rotina', txtDescricao, context),
      
              button('Continuar', 200, 50, () {
                Navigator.pushNamed(context, '/add/custom_date_rotine');
              })
            ],
          ),
        ),
      ),
    );
  }
}