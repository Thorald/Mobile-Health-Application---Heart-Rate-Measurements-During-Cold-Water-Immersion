part of '../main.dart';

class DuringSwimViewModel {
  final DuringSwimModel model;
  Stream<int> pulse = Stream.empty();

  DuringSwimViewModel({required this.model});
}
