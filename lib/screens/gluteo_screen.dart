import 'package:flutter/material.dart';

class Gluteo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rutina para gluteo"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              Image.asset(
                "images/gluteo.jpg",
                width: 200,
                height: 200,
              ),
              Text(
                  "Si realizas la versión clásica del ejercicio conseguirás tonificar la musculatura, mientras que si añades peso, lograrás aumentar su volumen."),
              Image.asset(
                "images/gluteo1.jpeg",
                width: 200,
                height: 200,
              ),
              Text(
                  "El movimiento es solo por por parte de los glúteos lo cual hace este ejercicio muy útil para trabajos de aislamiento de glúteos.")
            ])
          ],
        ),
      ),
    );
  }
}
