import 'package:flutter/material.dart';
import 'package:poke_tinder/ui/components/buttons.dart';
import 'package:poke_tinder/ui/components/edit_appbar_widget.dart';
import 'package:poke_tinder/ui/screens/select_mode_options_page.dart';

class SelectModePage extends StatelessWidget {
  const SelectModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          true, //extendBodyBehindAppBar faz com que a cor definida em body usada no Scaffold se estenda por trás da appBar
      appBar: EditAppBarWidget(),
      body: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFCC1F1F), Color(0xFFE52D27), Color(0xFFFF6A00)],
            stops: [
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
              spacing: 40,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  "assets/shellder-pokemon.png",
                  height: 212,
                  width: 212,
                ),

                Column(
                  spacing: 20,
                  children: <Widget>[
                    PrimaryButton(
                      label: "Tinder",
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectModeOptionsPage(),
                        ),
                      ),
                    ),
                    PrimaryButton(
                      label: "Draft",
                      onTap: () => print("print: botão Draft funcionando"),
                    ),
                    PrimaryButton(
                      label: "Battle",
                      onTap: () => print("print: botão Battle funcionando"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
