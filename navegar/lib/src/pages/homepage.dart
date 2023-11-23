import 'package:flutter/material.dart';
import 'package:navegar/src/pages/sing_in.dart';
import 'package:navegar/src/pages/sing_up.dart';

import '../widgets/icon_containers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Color.fromARGB(255, 0, 175, 57),
              Color.fromARGB(0, 195, 135, 134)
            ], begin: Alignment.topLeft),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              //Aquí ubicamos el URL de una imagen
              IconContainer(
                url: "imges/images.jpg",
              ),
              Text(
                "Bienvenido al curso",
                style: TextStyle(fontFamily: "PermanetMar", fontSize: 20.0),
              ),
              Text(
                "Ejercicio N° 1",
                style: TextStyle(fontFamily: "PermanetMar", fontSize: 20.0),
              ),
              Divider(
                height: 20.0,
              ),
              SizedBox(
                width: 300.0,
                height: 30.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => SingUp());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "SING UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "FredokaOne",
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Divider(
                height: 10.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 30.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => SingIn());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "SING IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "FredokaOne",
                      fontSize: 20.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}