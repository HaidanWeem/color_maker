import 'package:color_maker/feature/color_maker/presentation/pages/color_maker_screen.dart';
import 'package:color_maker/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/color_maker/presentation/bloc/color_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Maker',
      home: BlocProvider<ColorBloc>(
          create: (_) => sl<ColorBloc>(), child: const ColorMakerScreen()),
    );
  }
}
