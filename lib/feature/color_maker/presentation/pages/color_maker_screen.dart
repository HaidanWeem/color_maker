import 'package:color_maker/feature/color_maker/presentation/bloc/color_bloc.dart';
import 'package:color_maker/feature/color_maker/presentation/bloc/color_event.dart';
import 'package:color_maker/feature/color_maker/presentation/bloc/color_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorMakerScreen extends StatelessWidget {
  const ColorMakerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, ColorState>(builder: (context, state) {
      if (state is Initial) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: AnimatedContainer(
              color: state.color,
              duration: const Duration(seconds: 1),
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      'Hey there',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Poppins',
                          color: state.color.computeLuminance() > 0.5
                              ? Colors.black
                              : Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<ColorBloc>(context).add(ColorChanging());
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        return const Center();
      }
    });
  }
}
