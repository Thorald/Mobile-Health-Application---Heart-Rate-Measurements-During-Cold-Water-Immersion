library;

import 'package:flutter/material.dart';
import 'package:movesense_plus/movesense_plus.dart';
import 'dart:async';

part 'model/sensor_model.dart';
part 'model/during_swim_model.dart';
part 'model/connect_model.dart';

part 'view_model/connect_view_model.dart';
part 'view_model/during_swim_view_model.dart';
part 'view_model/hoome_view_model.dart';

part 'view/during_swim_view.dart';
part 'view/history_view.dart';
part 'view/home_view.dart';
part 'view/connect_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Viking app', home: const HomePage());
  }
}

class BLoC {
  final DuringSwimModel duringSwimModel = DuringSwimModel();
  final MovesenseDeviceManager deviceManger = MovesenseDeviceManager();
}

final bloc = BLoC();
