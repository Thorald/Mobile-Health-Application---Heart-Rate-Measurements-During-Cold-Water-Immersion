part of '../main.dart';

class DuringSwimViewModel {
  final DuringSwimModel model;

  Stream<int> get pulse => model.pulse;

  DuringSwimViewModel({required this.model});
}
