import 'package:flutter/material.dart';

class Triceps extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rutina para triceps"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              Image.asset(
                "images/triceps.jpg",
                width: 200,
                height: 200,
              ),
              Text(
                  "Para este ejercicio solo necesitas una superficie de apoyo, los bancos suelen servir para este objetivo. "),
              Image.asset(
                "images/triceps1.jpg",
                width: 200,
                height: 200,
              ),
              Text(
                  "La extensión del Tríceps sentado, si está usando un peso pesado o tiene una lesión en la espalda, para reducir la tensión, y asegúrate de que alguien le pase la mancuerna..")
            ])
          ],
        ),
      ),
    );
  }
}
