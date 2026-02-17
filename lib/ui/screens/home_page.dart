import 'package:flutter/material.dart';
import 'package:poke_tinder/ui/components/buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6A7BB0),
              Color(0xFFCC1F1F),
              Color(0xFFE52D27),
              Color(0xFFFF6A00),
            ],
            stops: [
              0.0, // O azul começa no zero...
              0.1, // ...e já começa a virar vermelho aos 10% da linha do gradiente
              0.4, // O vermelho escuro domina até os 40%
              1.0, // O restante da tela é preenchido pela transição para o laranja
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Image.asset(
                    "assets/main_image.png",
                  ), //repare que aimagem está dentro do Padding
                ),
                PrimaryButton(
                  label: "New Game",
                  onTap: () => print("print: botão funcionando"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
