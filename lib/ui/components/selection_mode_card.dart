import 'package:flutter/material.dart';
import 'package:poke_tinder/models/item_card_options_model.dart';

class SelectionModeCard extends StatelessWidget {
  final ItemCardOptionsModel itemCardOptionsModel;

  const SelectionModeCard({super.key, required this.itemCardOptionsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: InkWell(
        onTap: () => showModalBottomSheet(
          context: context,
          builder: (context) => buildSheet(),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [itemCardOptionsModel.backgroundColor, Colors.white],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: <Widget>[
                  Text(itemCardOptionsModel.title),
                  Text(itemCardOptionsModel.description),
                ],
              ),
              Image.asset(
                itemCardOptionsModel.imagePath,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSheet() => Container();
}
