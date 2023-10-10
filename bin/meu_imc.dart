import 'dart:indexed_db';

import 'package:meu_imc/person.dart' as meu_imc;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/main_page.dart';


void main(List<String> arguments) {
  var p1 = meu_imc.Person(name: name, height: height, weight: weight);
  print(p1);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue, textTheme: GoogleFonts.robotoTextTheme()),
      home: const MainPage(),
    );
  }
}

