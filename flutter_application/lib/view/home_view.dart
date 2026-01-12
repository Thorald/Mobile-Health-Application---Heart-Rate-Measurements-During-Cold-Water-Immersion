import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text('Middle')),
      bottomNavigationBar: bottomContainer(),
    );
  }

  Widget bottomContainer() {
    return Container(
      height: 80, // 👈 REQUIRED
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [Text('Left'), Text('Right')],
      ),
    );
  }
}
