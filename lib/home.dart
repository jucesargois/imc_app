import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool value = false;
  int? peso;
  double? altura;
  double resultado = 0;

  calculaImc(int? peso, double? altura) {
    if (peso != null && altura != null) {
      return resultado = peso / (altura * altura);
    }
  }

  classificacaoImc(var resultado) {
    if (resultado != null && resultado < 16) {
      return 'Magreza grau III'; //vermelho
    } else if (resultado >= 16.0 && resultado <= 16.9) {
      return 'Magreza grau II'; //vermelho
    } else if (resultado >= 17.0 && resultado <= 18.4) {
      return 'Magreza grau I'; //amarelo
    } else if (resultado >= 18.5 && resultado <= 24.9) {
      return 'Adequado'; //verde
    } else if (resultado >= 25.0 && resultado <= 29.9) {
      return 'Pré-obeso'; //amarelo
    } else if (resultado >= 30.0 && resultado <= 34.9) {
      return 'Obesidade grau I'; //vermelho
    } else if (resultado >= 35.0 && resultado <= 39.9) {
      return 'Obesidade grau II'; //vermelho
    } else if (resultado >= 40.0) {
      return 'Obesidade grau III'; //vermelho
    }
  }

  TextEditingController pesocontroller = TextEditingController();
  TextEditingController alturacontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF29434e),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    /* Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: [
                          Icon(
                            Icons.dark_mode_outlined,
                            size: 60,
                          ),
                        ],
                      ),
                    ),*/
                    SizedBox(
                      width: 340,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/images/logo_app_imc.png',
                        scale: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment(-0.70, -70.0),
                  child: Container(
                    width: 150,
                    height: 160,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF546e7a),
                          // spreadRadius: 5,
                          //blurRadius: 7,
                          offset: Offset(-5, 6), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Color(0xFF29434e),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Peso',
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0xFF819ca9),
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(color: Colors.white, fontSize: 28),
                            textAlign: TextAlign.center,
                            controller: pesocontroller,
                            decoration: const InputDecoration(
                              hintText: 'ex: 78',
                              hintStyle: TextStyle(
                                color: Color(0xFF819ca9),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment(0.60, 0.0),
                  child: Container(
                    width: 150,
                    height: 160,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF546e7a),
                          // spreadRadius: 5,
                          //blurRadius: 7,
                          offset: Offset(-5, 6), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Color(0xFF29434e),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        const Center(
                          child: Text(
                            'Altura',
                            style: TextStyle(
                                fontSize: 28, color: Color(0xFF819ca9)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(color: Colors.white, fontSize: 28),
                            textAlign: TextAlign.center,
                            controller: alturacontroller,
                            decoration: const InputDecoration(
                              hintText: 'ex..1.75',
                              hintStyle: TextStyle(color: Color(0xFF819ca9)),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment(-0.85, 0.0),
                  child: Visibility(
                    visible: value,
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF546e7a),
                            // spreadRadius: 5,
                            //blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0xFF29434e),
                      ),
                      child: Center(
                        child: Text(
                          "IMC: ${resultado.toStringAsFixed(2)}",
                          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600,color: Color(0xFF546e7a)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 56,
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF29434e), fixedSize: Size(40, 50)),
                    onPressed: () {
                      int? pesoconv = int.tryParse(pesocontroller.text);
                      peso = pesoconv;
                      double? alturaconv =
                          double.tryParse(alturacontroller.text);
                      altura = alturaconv;
                      resultado = calculaImc(peso, altura);
                      setState(
                        () {
                          resultado;
                        },
                      );
                      setState(
                        () {
                          value = true;
                        },
                      );
                    },
                    child: const Text(
                      'Calcular',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Visibility(
                  visible: value,
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: classificacaoImc(resultado) == 'Adequado'
                          ? Colors.green
                          : Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        '${classificacaoImc(resultado)}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
