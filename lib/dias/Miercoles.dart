import 'package:flutter/material.dart';

class Miercoles extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gluteo"),
      ),
      body: SingleChildScrollView(
          child: Stack(children: [
        Column(children: <Widget>[
          Title(
              color: Colors.black,
              child: Text(
                "Patada de gluteos",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 15 repeticiones por pierna, 4 vueltas "),
          Divider(height: 20, color: Colors.black, thickness: 5),
          Title(
              color: Colors.black,
              child: Text(
                "Puente de gluteo",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 15 repeticiones. 4 vueltas"),
          Divider(height: 20, color: Colors.black, thickness: 5),
        ]),
      ])),
    );
  }
}
