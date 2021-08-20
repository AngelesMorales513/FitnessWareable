import 'package:flutter/material.dart';

class Abdomen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rutina para abdomen"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              Image.asset(
                "images/abdomen.jpg",
                width: 200,
                height: 200,
              ),
              Text(
                  "Este ejercicio también cuenta con una infinidad de variantes. Se puede hacer desde posiciones laterales u horizontales, con una pierna o con las dos"),
              Image.asset(
                "images/abdomen1.jpeg",
                width: 200,
                height: 200,
              ),
              Text(
                  "Sientaté sobre una esterilla en el suelo e inclina ligeramente el torso hacia atrás. A continuación, flexiona las rodillas y levanta los pies del suelo, de tal manera que tus glúteos sean el único punto de apoyo de tu cuerpo en el suelo.")
            ])
          ],
        ),
      ),
    );
  }
}
