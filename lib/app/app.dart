import 'package:flutter/material.dart';
import 'package:poke_tinder/ui/screens/home_page.dart';

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
