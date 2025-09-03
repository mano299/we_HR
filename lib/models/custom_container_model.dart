import 'package:flutter/material.dart';

class CustomContainerModel {
  final Color color, stateColor;
  final String title, number, state;

  const CustomContainerModel({
    required this.color,
    required this.title,
    required this.number,
    required this.state,
    required this.stateColor,
  });
}
