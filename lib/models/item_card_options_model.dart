import 'package:flutter/material.dart';

class ItemCardOptionsModel {
  final String title;
  final String description;
  final String imagePath;
  final Color backgroundColor;
  final Map<String, bool> listMapOptions;

  const ItemCardOptionsModel({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.backgroundColor,
    required this.listMapOptions,
  });
}
