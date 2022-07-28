
import 'package:color_maker/feature/color_maker/domain/usecases/usecases.dart';
import 'package:color_maker/feature/color_maker/presentation/bloc/color_bloc.dart';
import 'package:get_it/get_it.dart';

import 'feature/color_maker/domain/repository/repositories.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC
  sl.registerFactory(
      () => ColorBloc(changeColor: sl()));

  // Usecases
  sl.registerLazySingleton(() => ChangeColor(sl()));

  // Repository
  sl.registerLazySingleton<Repository>(() =>
      RepositoryImpl());
  
}