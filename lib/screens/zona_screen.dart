import 'package:fitness/screens/abdomen_screen.dart';
import 'package:fitness/screens/biceps_screen.dart';
import 'package:fitness/screens/gluteo_screen.dart';
import 'package:fitness/screens/pierna_screen.dart';
import 'package:fitness/screens/triceps_screen.dart';
import 'package:flutter/material.dart';

class EjerciciosZona extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zonas del cuerpo"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Pierna()));
                  },
                  color: Colors.teal,
                  minWidth: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.airline_seat_legroom_normal_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        "Pierna",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Gluteo()));
                  },
                  color: Colors.teal,
                  minWidth: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      Text(
                        "Gluteo",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Biceps()));
                  },
                  color: Colors.teal,
                  minWidth: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.accessibility_new_sharp,
                        color: Colors.white,
                      ),
                      Text(
                        "Biceps",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Triceps()));
                  },
                  color: Colors.teal,
                  minWidth: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.connect_without_contact_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        "Triceps",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Abdomen()));
                  },
                  color: Colors.teal,
                  minWidth: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.emoji_people_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "Abdomen",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
