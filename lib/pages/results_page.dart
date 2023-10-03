import 'package:flutter/material.dart';
import 'package:meu_imc/model/bmi_model.dart';
import 'package:meu_imc/repository/bmi_repository.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  var bmiRepository = BMIRepository();
  var _bmis = const <BMI>[];


  @override
  void initState() {
    super.initState();
    obtainBmi();
  }

  void obtainBmi() async {
    _bmis = await bmiRepository.listar();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              Expanded(
                child: ListView.builder(
                    itemCount: _bmis.length,
                    itemBuilder: (BuildContext bc, int index) {
                      var bmi = _bmis[index]; 
                    }),
              ),
          );
  }
}