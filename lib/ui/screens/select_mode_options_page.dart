import 'package:flutter/material.dart';
import 'package:poke_tinder/models/item_card_options_model.dart';
import 'package:poke_tinder/ui/components/buttons.dart';
import 'package:poke_tinder/ui/components/edit_appbar_widget.dart';
import 'package:poke_tinder/ui/components/selection_mode_card.dart';

class SelectModeOptionsPage extends StatelessWidget {
  final List<ItemCardOptionsModel> listCards;

  const SelectModeOptionsPage({super.key, required this.listCards});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList.builder(
              itemBuilder: (context, index) =>
                  SelectionModeCard(itemCardOptionsModel: listCards[index]),
              itemCount: listCards.length,
            ),
            SliverToBoxAdapter(
              child: Center(
                child: PrimaryButton(
                  label: "Next",
                  onTap: () => print("print: botão funcionando"),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () => print("funciona"),
                child: Text("Botão que talvez devo usar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
