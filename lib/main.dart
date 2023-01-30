import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hour/view/pages/add.dart';
import 'package:hour/view/pages/edit.dart';
import 'package:hour/view/pages/home.dart';
import 'package:hour/view/pages/login.dart';
import 'package:hour/view/pages/planning.dart';
import 'package:hour/view/pages/presentation.dart';
import 'package:hour/view/pages/register.dart';

Future<void> main() async {

  await dotenv.load(fileName: ".env");
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controlador de horas',

      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(252, 252, 252, 1)),

      initialRoute: '/',

      routes: {
        '/': (context) => const Presentation(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
        '/add': (context) => const Add(),
        '/edit': (context) => const Edit(),
        '/planning': (context) => const Planning(),
      },
    ),
  );
}