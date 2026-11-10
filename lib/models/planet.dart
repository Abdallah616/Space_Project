import 'package:flutter/material.dart';

class Planet {
  final String name;
  final Image image;
  final String model3dPath;
  final String title;
  final String about;
  final String distance;
  final String lengthOfDay;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  Planet({
    required this.name,
    required this.image,
    required this.model3dPath,
    required this.title,
    required this.about,
    required this.distance,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });
}
