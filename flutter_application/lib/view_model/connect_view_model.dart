part of '../main.dart';

class ConnectViewModel {
  final MovesenseDeviceConnected movesense;

  ConnectViewModel({required this.movesense});

  void connect() => movesense.device.connect();
}
