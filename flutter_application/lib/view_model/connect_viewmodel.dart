part of '../main.dart';

class ConnectViewModel extends ChangeNotifier {
  bool _isConnecting = false;

  Future<void> connect() async {
    if (_isConnecting || isConnected) return;

    _isConnecting = true;
    notifyListeners();

    await block.movesenseDeviceManager.connect();
    // final state will come from device listener
  }

  void onDeviceChanged() {
    if (block.movesenseDeviceManager.device.isConnected) {
      _isConnecting = false;
    }
    notifyListeners();
  }

  bool get isConnected => block.movesenseDeviceManager.device.isConnected;

  bool get isConnecting => _isConnecting;
}
