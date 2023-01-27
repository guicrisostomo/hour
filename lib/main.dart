import 'package:flutter/material.dart';
import 'package:hour/view/pages/add.dart';
import 'package:hour/view/pages/edit.dart';
import 'package:hour/view/pages/home.dart';
import 'package:hour/view/pages/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controlador de horas',

      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(252, 252, 252, 1)),

      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login(),
        '/add': (context) => const Add(),
        '/edit': (context) => const Edit(),
      },
    ),
  );
}