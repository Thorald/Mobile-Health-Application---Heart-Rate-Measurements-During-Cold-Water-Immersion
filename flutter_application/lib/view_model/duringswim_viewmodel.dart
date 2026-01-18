part of '../main.dart';

final bathingEventStore = intMapStoreFactory.store('bathing_events');

class DuringswimViewModel {
  final BathingEvent bathingEvent;

  DuringswimViewModel() : bathingEvent = BathingEvent();

  Future<void> stopAndSave() async {
    await bathingEventStore.add(block.database, bathingEvent.toMap());
    debugPrint(">> Saved to database");
  }

  Stream<int> get pulse =>
      block.movesenseDeviceManager.device.hr.map((hr) => hr.average);
}
