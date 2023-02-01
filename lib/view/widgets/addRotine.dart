import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hour/globals.dart' as globals;

Widget addRotine(Function()? onPressed) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(20),
      backgroundColor: globals.primary,
      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),

    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),

        const SizedBox(width: 10),

        Text(
          'Adicionar rotina',
          style: GoogleFonts.lato(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}