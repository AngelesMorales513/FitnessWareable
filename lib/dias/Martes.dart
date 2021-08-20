import 'package:flutter/material.dart';

class Martes extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abdomen"),
      ),
      body: SingleChildScrollView(
          child: Stack(children: [
        Column(children: <Widget>[
          Title(
              color: Colors.black,
              child: Text(
                "Plancha",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 1 minuto, 3 vueltas"),
          Divider(height: 20, color: Colors.black, thickness: 5),
          Title(
              color: Colors.black,
              child: Text(
                "Tijeras",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 2 minutos, 4 vueltas"),
          Divider(height: 20, color: Colors.black, thickness: 5),
        ]),
      ])),
    );
  }
}
