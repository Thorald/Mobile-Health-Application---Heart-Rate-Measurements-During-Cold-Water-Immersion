part of '../main.dart';

class MovesenseDeviceManager extends ChangeNotifier {
  final MovesenseDevice device = MovesenseDevice(
    address: '734F40F9-DB19-A046-EA83-EB81CA989B50',
  );

  StreamSubscription<MovesenseState>? stateSubscription;
  StreamSubscription<MovesenseHR>? hrSubscription;

  Future<void> init() async {
    device.statusEvents.listen((status) {
      debugPrint('>> ${status.name}');
      notifyListeners();
    });
  }

  Future<void> connect() async {
    if (!device.isConnected) {
      debugPrint("Connecting...");
      device.connect();
    } else {
      debugPrint("Device connected.");
    }
  }

  @override
  void dispose() {
    stateSubscription?.cancel();
    super.dispose();
  }
}
