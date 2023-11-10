import 'package:flutter/material.dart';
import 'package:navegar/src/pages/homePage.dart';
import 'package:navegar/src/pages/sing_in.dart';
import 'package:navegar/src/pages/sing_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // crear rutas de navegacon
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "Home",
      routes: <String, WidgetBuilder>{
        "Home":(BuildContext context) => HomePage(),
        "Sing_in":(BuildContext context) => SingIn(), 
        "Sing_up":(BuildContext context) => SingUp(), 
      },
    );
  }
}