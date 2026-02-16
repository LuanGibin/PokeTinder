import 'package:flutter/material.dart';

void main() {
  runApp(PokeTinder());
}

class PokeTinder extends StatelessWidget {
  const PokeTinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PokéTinder",
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: Color(0xFFE9460C),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("PokéTinder")));
  }
}
