import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _email = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          InputText(
              hint: "Email Address",
              label: "Email Address",
              keyborad: TextInputType.emailAddress,
              icono: Icon(Icons.verified_user),
              onChanged: ((data) {
                _email = data!;
              }),
              validator: (data) {
                if (!data!.contains("@")) {
                  return "Invalido Email";
                }
                return null!;
              }),
          Divider(
            height: 15.0,
          ),
          InputText(
              hint: "User Password",
              label: "User Password",
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
              onPressed: () {final route =
                        MaterialPageRoute(builder: (context) => SingUp());
                    Navigator.push(context, route);},
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
