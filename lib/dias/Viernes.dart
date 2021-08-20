import 'package:flutter/material.dart';

class Viernes extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Triceps"),
      ),
      body: SingleChildScrollView(
          child: Stack(children: [
        Column(children: <Widget>[
          Title(
              color: Colors.black,
              child: Text(
                "Dippings",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 15 repeticiones, 4 vueltas"),
          Divider(height: 20, color: Colors.black, thickness: 5),
          Title(
              color: Colors.black,
              child: Text(
                "Flexiones con manos",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 20 repeticiones, 4 vueltas"),
          Divider(height: 20, color: Colors.black, thickness: 5),
        ]),
      ])),
    );
  }
}
