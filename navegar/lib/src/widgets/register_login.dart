import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/input_text.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String _usuario= "";
  String _nombre= "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          InputText(
              hint: "Usuario",
              label: "Usuario",
              icono: Icon(Icons.verified_user),
              onChanged: ((data) {
                _usuario = data!;
              }),
              validator: (data) {
                if (!data!.contains("@")) {
                  return "Invalido User";
                }
                return null!;
              }),
          Divider(
            height: 15.0,
          ),
          InputText(
              hint: "Nombre",
              label: "Nombre",
              icono: Icon(Icons.verified_user),
              onChanged: ((data) {
                _nombre = data!;
              }),
              validator: (data) {
                if (!data!.contains("@")) {
                  return "Invalido Nombre";
                }
                return null!;
              }),
          Divider(
            height: 15.0,
          ),
          InputText(
              hint: "Password",
              label: "Password",
              obsecure: false,
              icono: Icon(Icons.lock_clock),
              onChanged: ((data) {
                _password = data!;
              }),
              validator: (data) {
                if (data?.trim().length == 0) {
                  return "Invalido Password";
                }
                return null!;
              }),
          Divider(
            height: 15.0,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "INGRESAR",
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
    );
  }
}
