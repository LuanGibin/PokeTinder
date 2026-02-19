import 'package:flutter/material.dart';
import 'package:poke_tinder/models/item_card_options_model.dart';

class ItemCardOptionsModelCollections {
  static const List<ItemCardOptionsModel> optionsToTinderMode = [
    ItemCardOptionsModel(
      title: "Types",
      description: "Clique aqui para definir os Types",
      imagePath: "assets/bulbassaur_card.png",
      backgroundColor: Color(0xFF8BD46E),
    ),
    ItemCardOptionsModel(
      title: "Gens",
      description: "Clique aqui para definir os Gens",
      imagePath: "assets/ponyta_card.png",
      backgroundColor: Color(0xFFFF6043),
    ),
    ItemCardOptionsModel(
      title: "Only Pokemons",
      description: "Clique aqui para definir os Only Pokemons",
      imagePath: "assets/marill_card.png",
      backgroundColor: Color(0xFF51A8FF),
    ),
    ItemCardOptionsModel(
      title: "Mechanics",
      description: "Clique aqui para definir os Mechanics",
      imagePath: "assets/mareep_card.png",
      backgroundColor: Color(0xFFFFD451),
    ),
  ];
}
