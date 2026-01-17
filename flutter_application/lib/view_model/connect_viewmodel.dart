part of '../main.dart';

class ConnectViewModel {
  VoidCallback? _onChange;

  void bind(VoidCallback onChange) {
    _onChange = onChange;
    block.movesenseDeviceManager.addListener(_notify);
  }

  void unbind() {
    block.movesenseDeviceManager.removeListener(_notify);
    _onChange = null;
  }

  void _notify() {
    _onChange?.call();
  }

  Future<void> connect() async {
    await block.movesenseDeviceManager.connect();
  }

  bool get isConnected => block.movesenseDeviceManager.device.isConnected;
}
