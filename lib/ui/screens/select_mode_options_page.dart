import 'package:flutter/material.dart';
import 'package:poke_tinder/ui/components/edit_appbar_widget.dart';
import 'package:poke_tinder/ui/components/selection_mode_card.dart';

class SelectModeOptionsPage extends StatelessWidget {
  const SelectModeOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditAppBarWidget(),
      body: const Center(
        child: SelectionModeCard(
          title: "Type",
          description: "Clique aqui e selecione os tipos!",
        ),
      ),
    );
  }
}
