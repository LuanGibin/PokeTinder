import 'package:flutter/material.dart';
import 'package:poke_tinder/ui/components/buttons.dart';
import 'package:poke_tinder/ui/components/edit_appbar_widget.dart';
import 'package:poke_tinder/ui/components/selection_mode_card.dart';

class SelectModeOptionsPage extends StatelessWidget {
  const SelectModeOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditAppBarWidget(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList.builder(
            itemBuilder: (context, index) =>
                SelectionModeCard(title: "title", description: "description"),
            itemCount: 10,
          ),
          SliverToBoxAdapter(
            child: Center(
              child: PrimaryButton(
                label: "Next",
                onTap: () => print("print: botão funcionando"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
