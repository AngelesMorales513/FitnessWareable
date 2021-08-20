import 'package:flutter/material.dart';

class Jueves extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biceps"),
      ),
      body: SingleChildScrollView(
          child: Stack(children: [
        Column(children: <Widget>[
          Title(
              color: Colors.black,
              child: Text(
                "Curl de biceps",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 12 repeticiones, 4 vueltas"),
          Divider(height: 20, color: Colors.black, thickness: 5),
          Title(
              color: Colors.black,
              child: Text(
                "Curl en predicador",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 12 repeticiones, 4 vueltas "),
          Divider(height: 20, color: Colors.black, thickness: 5),
        ]),
      ])),
    );
  }
}
