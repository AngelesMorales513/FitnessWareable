import 'package:flutter/material.dart';

class Lunes extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pierna"),
      ),
      body: SingleChildScrollView(
          child: Stack(children: [
        Column(children: <Widget>[
          Title(
              color: Colors.black,
              child: Text(
                "Sentadillas",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- Sentadillas (12 repeticiones, 4 vueltas"),
          Divider(height: 20, color: Colors.black, thickness: 5),
          Title(
              color: Colors.black,
              child: Text(
                "Zancadas alternas",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 15 repeticiones por pierna, 4 vueltas"),
          Divider(height: 20, color: Colors.black, thickness: 5),
          Title(
              color: Colors.black,
              child: Text(
                "Puente",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text("- 15 repeticiones, 4 vueltas"),
          Divider(height: 20, color: Colors.black, thickness: 5),
        ]),
      ])),
    );
  }
}
