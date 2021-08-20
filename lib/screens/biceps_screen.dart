import 'package:flutter/material.dart';

class Biceps extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rutina para Biceps"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              Image.asset(
                "images/biceps.jpg",
                width: 200,
                height: 200,
              ),
              Text(
                  "El mejor ejercicio para trabajar los brazos es el curl de bíceps porque lo hace de forma aislada"),
              Image.asset(
                "images/biceps1.jpg",
                width: 200,
                height: 200,
              ),
              Text(
                  "Unos bíceps fuertes dan un aspecto de fornido, siendo una de las partes del cuerpo más visibles y la que más favorece una buena apariencia..")
            ])
          ],
        ),
      ),
    );
  }
}
