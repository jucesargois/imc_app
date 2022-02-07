import 'package:flutter/material.dart';

import '../home.dart';

class ImcWidget extends StatelessWidget {
  const ImcWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
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
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xFF546e7a),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
