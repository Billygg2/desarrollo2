import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/login_form.dart';

import '../widgets/icon_containers.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
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
                "Login",
                style: TextStyle(fontFamily: "PermanetMar", fontSize: 30.0),
              ),
              Divider(
                height: 20.0,
              ),
              LoginForm()
              // qui llamamos a la pantalla del formulario
            ],
          ),
        ),
      ),
    );
  }
}