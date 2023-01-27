// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hour/globals.dart' as globals;

Widget textFieldGeneral(label, variavel, context) {

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      boxShadow: [
        BoxShadow(color: globals.tertiary, spreadRadius: 1),
      ],
    ),

    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      
      child: textField(label, variavel, context),
    ),
  );
}

Widget textField(label, variavel, context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 15),
    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
    
    constraints: const BoxConstraints( 
      minWidth: 70,
    ),

    child: Center(
      child: TextFormField(
        controller: variavel,

        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),

        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),

          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide:  const BorderSide(color: Colors.black ),
          ),
        ),
        
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Preencha o campo com as informações necessárias';
          }
          return null;
        }
      )
    )
  );
}