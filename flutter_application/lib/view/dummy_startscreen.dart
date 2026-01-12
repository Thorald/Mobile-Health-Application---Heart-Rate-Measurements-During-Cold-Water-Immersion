import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const title = 'Viking Bath';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: const MyTextWidget(),
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Welcome to Viking Bath!', style: TextStyle(fontSize: 24)),
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'SizedBox Widget Demo';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: _title, home: MyStatelessWidget());
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SizedBox Example')),
      body: _buildSizedBoxWidget(),
    );
  }

  Widget _buildSizedBoxWidget() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: const [
          SizedBox(
            width: 200,
            height: 100,
            child: Card(
              color: Colors.amber,
              child: Center(child: Text('Developer')),
            ),
          ),
          SizedBox(
            width: 300,
            height: 100,
            child: Card(
              color: Colors.green,
              child: Center(child: Text('Flutter Framework')),
            ),
          ),
          SizedBox(
            width: 400,
            height: 100,
            child: Card(
              color: Colors.blue,
              child: Center(child: Text('Dart SDK')),
            ),
          ),
        ],
      ),
    );
  }
}
