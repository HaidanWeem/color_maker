import 'package:equatable/equatable.dart';

abstract class ColorEvent extends Equatable {
  const ColorEvent();

  @override
  List<Object> get props => [];
}

class ColorChanging extends ColorEvent {
  ColorChanging();
  @override
  List<Object> get props => [];
}
