import 'package:flutter/material.dart';

class Pierna extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rutina para pierna"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              Image.asset(
                "images/pierna.png",
                width: 200,
                height: 200,
              ),
              Text(
                  "Es uno de los ejercicios más clásicos y sencillos, pero a la vez es el más potente para trabajar el tren inferior."),
              Image.asset(
                "images/pierna1.jpg",
                width: 200,
                height: 200,
              ),
              Text(
                  "Siempre deja la sensación de trabajo bien realizado e intenso, y para las piernas es clave si queremos trabajar la parte posterior de las mismas..")
            ])
          ],
        ),
      ),
    );
  }
}
