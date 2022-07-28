import 'dart:math';
import 'package:flutter/material.dart';

abstract class Repository {
  Color ChangeColor();
}

class RepositoryImpl implements Repository {
  final random = Random();

  @override
  Color ChangeColor() {
    Color currentColor = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    return currentColor;
  }
}
