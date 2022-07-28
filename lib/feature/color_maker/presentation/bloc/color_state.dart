import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ColorState extends Equatable {
  const ColorState();

  @override
  List<Object?> get props => [];
}

class Initial extends ColorState {
  final Color color;
  Initial({required this.color});
  @override
  List<Object?> get props => [];
}

class Changing extends ColorState {
  @override
  List<Object?> get props => [];
}
