import 'package:flutter/material.dart';
import 'package:meu_imc/pages/main_page.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key? key}) : super(key: key);

  @override
  State<BmiPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BmiPage> {
  var weightController = TextEditingController(text: "");
  var heightController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: 
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: Image.network(
                        "https://images.everydayhealth.com/images/diet-nutrition/weight/bmi-in-adults-722x406.jpg?sfvrsn=9f226e4c_0",
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: weightController,
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 141, 79, 151))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 141, 79, 151))),
                        hintText: "Weight in kilograms",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 141, 79, 151),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: heightController,
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 0),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 141, 79, 151))),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 141, 79, 151))),
                        hintText: "Height in centimeters",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 141, 79, 151),
                        ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container( //button
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {
                          if (weightController.text.trim() == "a, e, i, o, u, y, w, b, c, d, f, g, h, j, k, l, m, n, p, q, r, s, t, v, w, x, z"
                           && heightController.text.trim() == "a, e, i, o, u, y, w, b, c, d, f, g, h, j, k, l, m, n, p, q, r, s, t, v, w, x, z") {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Use apenas números para calcular o IMC")));
                          }
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 141, 79, 151))),
                        child: const Text(
                          "CALCULAR IMC",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                ),
            ),
          ),
        ),
      ),
    );
  }
}