import 'package:flutter/material.dart';
import 'package:poke_tinder/models/item_card_options_model.dart';

class ItemCardOptionsModelCollections {
  static const List<ItemCardOptionsModel> optionsToTinderMode = [
    ItemCardOptionsModel(
      title: "Types",
      description: "Clique aqui para definir os Types",
      imagePath: "assets/bulbassaur_card.png",
      backgroundColor: Color(0xFF8BD46E),
      listMapOptions: {
        "Normal": true,
        "Fire": true,
        "Water": true,
        "Electric": true,
        "Grass": true,
        "Ice": true,
        "Fighting": true,
        "Poison": true,
        "Ground": true,
        "Flying": true,
        "Psychic": true,
        "Bug": true,
        "Rock": true,
        "Ghost": true,
        "Dragon": true,
        "Dark": true,
        "Steel": true,
        "Fairy": true,
      },
    ),
    ItemCardOptionsModel(
      title: "Gens",
      description: "Clique aqui para definir os Gens",
      imagePath: "assets/ponyta_card.png",
      backgroundColor: Color(0xFFFF6043),
      listMapOptions: {
        "Gen 1": true,
        "Gen 2": true,
        "Gen 3": true,
        "Gen 4": true,
        "Gen 5": true,
        "Gen 6": true,
        "Gen 7": true,
        "Gen 8": true,
        "Gen 9": true,
      },
    ),
    ItemCardOptionsModel(
      title: "Only Pokemons",
      description: "Clique aqui para definir os Only Pokemons",
      imagePath: "assets/marill_card.png",
      backgroundColor: Color(0xFF51A8FF),
      listMapOptions: {"legendary": true, "mythical": true, "starter": true},
    ),
    ItemCardOptionsModel(
      title: "Mechanics",
      description: "Clique aqui para definir os Mechanics",
      imagePath: "assets/mareep_card.png",
      backgroundColor: Color(0xFFFFD451),
      listMapOptions: {"Shiny": true, "Alolan": true, "Galarian": true},
    ),
  ];
}
