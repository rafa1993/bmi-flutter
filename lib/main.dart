import 'package:flutter/material.dart';
import 'meu_imc.dart';
import 'package:meu_imc/model/';
import 'package:path/path.dart' as path;



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var documentsDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  runApp(const MyApp());
}