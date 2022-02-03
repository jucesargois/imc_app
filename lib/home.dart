import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  int? peso;
  double? altura;
  var resultado;
  calculaImc(int? peso, double? altura) {
    var resultado;
    if (peso != null && altura != null) {
      return resultado = peso / (altura * altura);
    }
  }

  TextEditingController pesocontroller = TextEditingController();
  TextEditingController alturacontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('App Imc ')),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 130,
              ),
              const Center(
                child: Text(
                  'Peso',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: pesocontroller,
                  decoration: const InputDecoration(hintText: 'Peso'),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Text(
                  'Altura',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: alturacontroller,
                  decoration: const InputDecoration(hintText: 'altura'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    int? pesoconv = int.tryParse(pesocontroller.text);
                    peso = pesoconv;
                    double? alturaconv = double.tryParse(alturacontroller.text);
                    altura = alturaconv;
                    resultado = calculaImc(peso, altura);
                  },
                  child: const Text('Calcular'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text("Resultado: $resultado")
            ],
          ),
        ),
      ),
    );
  }
}
