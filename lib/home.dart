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
        appBar: AppBar(
          title: const Center(child: Text('App Imc ')),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
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
                  textAlign: TextAlign.center,
                  controller: pesocontroller,
                  decoration: const InputDecoration(hintText: 'ex..78'),
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
                  textAlign: TextAlign.center,
                  controller: alturacontroller,
                  decoration: const InputDecoration(hintText: 'ex..1.75'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    int? pesoconv = int.tryParse(pesocontroller.text);
                    peso = pesoconv;
                    double? alturaconv = double.tryParse(alturacontroller.text);
                    altura = alturaconv;
                    resultado = calculaImc(peso, altura);
                    setState(() {
                      resultado;
                    });
                    setState(() {
                      value = true;
                    });
                  },
                  child: const Text('Calcular'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                "Resultado: ${resultado.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 25),
              )),
              const SizedBox(
                height: 120,
              ),
              Visibility(
                  visible: value,
                  child: Container(
                    color: classificacaoImc(resultado) == 'Adequado'
                        ? Colors.green
                        : Colors.red,
                        
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Text(
                        '${classificacaoImc(resultado)}',
                        style: const TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
