import 'package:flutter/material.dart';
import 'package:imc_app/calcula_imc.dart';
import 'widgets/box_altura.dart';
import 'widgets/box_imc.dart';
import 'widgets/box_peso.dart';
import 'widgets/btn_calcular.dart';
import 'widgets/imc_resultado_faixa.dart';

TextEditingController pesocontroller = TextEditingController();
TextEditingController alturacontroller = TextEditingController();
bool value = false;
int? peso;
double? altura;
double resultado = 0;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                PesoWidget(),
                const SizedBox(
                  height: 50,
                ),
                AlturaWidget(),
                const SizedBox(
                  height: 5,
                ),
               ImcWidget(),
                const SizedBox(
                  height: 56,
                ),
                CalcularWidget(
                  () {
                    int? pesoconv = int.tryParse(pesocontroller.text);
                    peso = pesoconv;
                    double? alturaconv = double.tryParse(alturacontroller.text);
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
                ),
                const SizedBox(
                  height: 70,
                ),
                ImcResultadoWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
