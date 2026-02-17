import 'package:flutter/material.dart';
import 'package:poke_tinder/ui/components/buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(),
              Image.asset("assets/main_image.png"),
              PrimaryButton(
                label: "New Game",
                onTap: () => print("print: botão funcionando"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
