// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hour/globals.dart' as globals;

Widget floatingButton(context) {
  return FloatingActionButton(
    backgroundColor: globals.primary,
    onPressed: () {
      Navigator.pushNamed(context, '/planning');
    },

    child: const Icon(
      Icons.calendar_month,
      color: Colors.white,
    ),
  );
}