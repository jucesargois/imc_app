import 'package:flutter/material.dart';
import 'package:imc_app/home.dart';

class AlturaWidget extends StatelessWidget {
  const AlturaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
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
                  fontSize: 28,
                  color: Color(0xFF819ca9),
                ),
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
    );
  }
}
