part of '../main.dart';

class DuringSwimModel {
  Stream<int> get pulse =>
      bloc.movesenseDeviceConnected.device.hr.map((hr) => hr.average);
}
