import 'package:flutter/material.dart';

class Water extends StatefulWidget {
  @override
  _WaterState createState() => _WaterState();
}

class _WaterState extends State<Water> {
  String _info = "Informe de sus datos.";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController vasosAgua = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  void _resetFields() {
    vasosAgua.text = '';
    pesoController.text = '';
    alturaController.text = '';
    setState(() {
      _info = "Informe de sus datos.";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calcular() {
    setState(() {
      int agua = int.parse(vasosAgua.text);
      if (agua <= 7) {
        _info = 'Tomar minimo 8 vasos al dia (${agua.toStringAsPrecision(3)})';
      } else if (agua >= 8) {
        _info =
            'Mantente hidratado vas muy bien (${agua.toStringAsPrecision(3)})';
      }
      // double peso = double.parse(pesoController.text);
      // double altura = double.parse(alturaController.text) / 100;
      // double imc = peso / (altura * altura);
      // print(imc);
      // if (imc < 18.6) {
      //   _info = 'Arriba del peso (${imc.toStringAsPrecision(3)})';
      // } else if (imc >= 18.6 && imc < 24.9) {
      //   _info = 'Peso Ideal (${imc.toStringAsPrecision(3)})';
      // } else if (imc >= 24.9 && imc < 29.9) {
      //   _info = 'Levemente arriba del peso (${imc.toStringAsPrecision(3)})';
      // } else if (imc >= 29.9 && imc < 34.9) {
      //   _info = 'Obesidad Grado I (${imc.toStringAsPrecision(3)})';
      // } else if (imc >= 34.9 && imc < 39.9) {
      //   _info = 'Obesidad Grado II (${imc.toStringAsPrecision(3)})';
      // } else if (imc >= 40) {
      //   _info = 'Obesidad Grado III (${imc.toStringAsPrecision(3)})';
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calcula Agua"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: _resetFields)
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //Icon(Icons.person_outline, size: 120.0, color: Colors.green),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Vasos de agua:",
                        labelStyle: TextStyle(color: Colors.blueGrey)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
                    controller: vasosAgua,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Ingresa un dato valido!";
                      }
                    },
                  ),
                  // TextFormField(
                  //   keyboardType: TextInputType.number,
                  //   decoration: InputDecoration(
                  //       labelText: "Altura (CM)",
                  //       labelStyle: TextStyle(color: Colors.green)),
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(color: Colors.green, fontSize: 25.0),
                  //   controller: alturaController,
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return "Ingresa tu altura!";
                  //     }
                  //   },
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Container(
                      height: 20,
                      child: RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _calcular();
                          }
                        },
                        child: Text(
                          'Calcular',
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Text(
                    _info,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                  )
                ],
              ),
            )));
  }
}
