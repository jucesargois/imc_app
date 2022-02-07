import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalcularWidget extends StatelessWidget {
  CalcularWidget(this.onPressed, {Key? key}) : super(key: key);
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFF29434e), fixedSize: Size(40, 50)),
        onPressed: onPressed,
        child: const Text(
          'Calcular',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
