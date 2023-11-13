import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
final String label;
final String hint;
final Icon icono;
final TextInputType keyborad;
final bool obsecure;
final void Function(String data)onChanged;
final String Function(String data)validator;
const InputText({key, 
      this.label ="",
      this.hint ="",
      this.icono,
      this.keyborad = TextInputType.text,
      this.obsecure = false,
      required this.onChanged,
      required this.validator,
      }): super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: this.keyborad,
        obscureText: this.obsecure,
        onChanged: this.onChanged,
        // validator: this.validator,
        decoration: InputDecoration(
          hintText: this.hint,
          labelText: this.label,
          labelStyle: TextStyle(
            color: Colors.blueGrey,
            fontFamily: "fredokaOne",
            fontSize: 25.0,
          ),
          suffixIcon: this.icono,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
        ),
      ),
    );
  }
}