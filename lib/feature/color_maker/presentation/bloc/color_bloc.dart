import 'package:color_maker/feature/color_maker/domain/usecases/usecases.dart';
import 'package:color_maker/feature/color_maker/presentation/bloc/color_event.dart';
import 'package:color_maker/feature/color_maker/presentation/bloc/color_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:color_maker/feature/color_maker/presentation/bloc/color_event.dart';
// import 'package:color_maker/feature/color_maker/presentation/bloc/color_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  final ChangeColor changeColor;
  Color color;
  
  ColorBloc(
      {required this.changeColor,
      this.color = const Color.fromARGB(0, 0, 0, 1)})
      : super(Initial(color: color)) {
    on<ColorChanging>(
      (event, emit) {
        try {
          emit(Changing());
          color = changeColor();
          emit(Initial(color: color));
        } catch (e) {}
      },
    );
  }
}
