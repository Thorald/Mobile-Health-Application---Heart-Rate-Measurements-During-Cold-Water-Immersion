part of '../main.dart';

class DuringSwimModel {
  Stream<int> pulse = bloc.movesense.device.hr;
}
