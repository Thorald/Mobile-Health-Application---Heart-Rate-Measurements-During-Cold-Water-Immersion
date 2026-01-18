part of '../main.dart';

class BathingEvent {
  final DateTime eventTimeStarted;

  BathingEvent() : eventTimeStarted = DateTime.now();

  Map<String, dynamic> toMap() {
    return {'eventTimeStarted': eventTimeStarted.toUtc().toIso8601String()};
  }
}
