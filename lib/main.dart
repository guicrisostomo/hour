import 'package:flutter/material.dart';
import 'package:hour/view/add.dart';
import 'package:hour/view/edit.dart';
import 'package:hour/view/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controlador de horas',

      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(252, 252, 252, 1)),

      routes: {
        '/': (context) => const Home(),
        '/add': (context) => const Add(),
        '/edit': (context) => const Edit(),
      },
    ),
  );
}