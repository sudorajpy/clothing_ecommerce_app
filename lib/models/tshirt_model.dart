import 'package:flutter/material.dart';

class TshirtModelData {
  final String id;
  final String name;
  final List<String> imagePath;
  final String description;
  final List<Color> color;
  final String gender;

  TshirtModelData(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.description,
      required this.color,
      required this.gender});
}
