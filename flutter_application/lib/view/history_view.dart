import 'package:flutter/material.dart';

// This is the History view screen

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('History')),
      body: const Center(child: Text('History data')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
      appBar: AppBar(title: const Text('Previous Swims!')),
      body: _buildSizedBoxWidget(),
    );
  }

  Widget _buildSizedBoxWidget() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: const [
          SizedBox(
            width: 300,
            height: 50,
            child: Card(
              color: Color.fromARGB(255, 204, 204, 204),
              child: Center(child: Text('Swim 1')),
            ),
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: Card(
              color: Color.fromARGB(255, 204, 204, 204),
              child: Center(child: Text('Swim 2')),
            ),
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: Card(
              color: Color.fromARGB(255, 204, 204, 204),
              child: Center(child: Text('Swim 3')),
            ),
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: Card(
              color: Color.fromARGB(255, 204, 204, 204),
              child: Center(child: Text('Swim 4')),
            ),
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: Card(
              color: Color.fromARGB(255, 204, 204, 204),
              child: Center(child: Text('Swim 5')),
            ),
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: Card(
              color: Color.fromARGB(255, 204, 204, 204),
              child: Center(child: Text('Swim 6')),
            ),
          ), 
        ],
      ),
    );
  }
}
