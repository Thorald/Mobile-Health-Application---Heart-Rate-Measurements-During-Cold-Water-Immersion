part of '../main.dart';

class ConnectViewModel {
  final MovesenseDeviceManager model;

  void connect() {
    model.connect();
  }

  ConnectViewModel({required this.model});
}
