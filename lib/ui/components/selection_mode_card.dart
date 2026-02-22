import 'package:flutter/material.dart';
import 'package:poke_tinder/models/item_card_options_model.dart';

class SelectionModeCard extends StatelessWidget {
  final ItemCardOptionsModel itemCardOptionsModel;

  const SelectionModeCard({super.key, required this.itemCardOptionsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: GestureDetector(
        onTap: () => showModalBottomSheet(
          context: context,
          builder: (context) => buildSheet(),
        ),
        child: Container(
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

  Widget buildSheet() {
    final Map<String, bool> mapList = Map.from(
      itemCardOptionsModel.listMapOptions,
    ); //Precisa criar a váriavel mapList dessa forma para não alterar o valor original do itemCardOptionsModel.listMapOptions. Essa é então uma cópia

    return StatefulBuilder(
      builder: (context, setModalState) {
        return ListView(
          padding: const EdgeInsets.all(16),
          children: mapList.entries.map((entry) {
            return SwitchListTile(
              title: Text(entry.key),
              value: entry.value,
              onChanged: (value) {
                setModalState(() => mapList[entry.key] = value);
                debugPrint('Novo valor de ${entry.key}: $value');
              },
            );
          }).toList(),
        );
      },
    );
  }
}
