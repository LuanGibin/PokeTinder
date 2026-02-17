import 'package:flutter/material.dart';
import 'package:poke_tinder/ui/components/context_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(),
          Image.asset("assets/main_image.png"),
          PrimaryButton(
            label: "New Game",
            onTap: () => print("print: botão funcionando"),
          ),
        ],
      ),
    );
  }
}
