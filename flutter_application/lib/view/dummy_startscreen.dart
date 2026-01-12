import 'package:flutter/material.dart';

// This is the initial statscreen


class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Welcome to Viking Bath!', style: TextStyle(fontSize: 24)),
    );
  }
}
