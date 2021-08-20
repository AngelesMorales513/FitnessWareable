import 'package:fitness/dias/Jueves.dart';
import 'package:fitness/dias/Lunes.dart';
import 'package:fitness/dias/Martes.dart';
import 'package:fitness/dias/Miercoles.dart';
import 'package:fitness/dias/Viernes.dart';
import 'package:flutter/material.dart';

class PlanSemanal extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plan de ejercicio", style: TextStyle(fontSize: 12)),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.check),
                  title: Text("Lunes"),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Lunes()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.check),
                  title: Text("Martes"),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Martes()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.check),
                  title: Text("Miercoles"),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Miercoles()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.check),
                  title: Text("Jueves"),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Jueves()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.check),
                  title: Text("Viernes"),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Viernes()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
