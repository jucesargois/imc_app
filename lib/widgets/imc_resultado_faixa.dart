import 'package:flutter/material.dart';
import 'package:imc_app/home.dart';
import 'package:imc_app/model/classificacao_imc.dart';


class ImcResultadoWidget extends StatelessWidget {
  const ImcResultadoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
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
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
