part of '../main.dart';

class HomeViewModel {
  DuringSwimViewModel duringSwimModel = DuringSwimViewModel(
    model: bloc.duringSwimModel,
  );
  MovesenseDeviceManager movesenseDeviceManager = MovesenseDeviceManager();
}
