import 'package:flutter/material.dart';
import 'package:poke_tinder/widgets/context_button.dart';

void main() {
  runApp(PokeTinder());
}

class PokeTinder extends StatelessWidget {
  const PokeTinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PokéTinder",
      theme: ThemeData(brightness: Brightness.light, useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(),
          Image.asset("assets/main_image.png"),
          ContextButton(
            label: "New Game",
            onTap: () => print("print: botão funcionando"),
          ),
        ],
      ),
    );
  }
}
