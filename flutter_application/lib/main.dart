library;

import 'package:flutter/material.dart';
import 'view/home_view.dart';
import 'package:movesense_plus/movesense_plus.dart';
import 'dart:async';
import '';

part 'view_model/connect_view_model.dart';
part 'model/connect_model.dart';
part 'view_model/during_swim_view_model.dart';
part 'view/during_swim_view.dart';

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
  final MovesenseDeviceConnected = MovesenseDeviceConnected();
}

final bloc = BLoC();
