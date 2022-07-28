import 'package:color_maker/feature/color_maker/domain/repository/repositories.dart';

import 'package:flutter/material.dart';

abstract class UseCase<Params> {
  Color call();
}

class ChangeColor extends UseCase {
  final Repository repository;

  ChangeColor(this.repository);

  Color call() {
    return repository.ChangeColor();
  }


}

