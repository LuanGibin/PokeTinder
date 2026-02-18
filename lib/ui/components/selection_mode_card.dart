import 'package:flutter/material.dart';

class SelectionModeCard extends StatelessWidget {
  final String title;
  final String description;

  const SelectionModeCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: <Widget>[Text(title), Text(description)],
          ),
          Image.asset('assets/shellder-pokemon.png', height: 100, width: 100),
        ],
      ),
    );
  }
}
