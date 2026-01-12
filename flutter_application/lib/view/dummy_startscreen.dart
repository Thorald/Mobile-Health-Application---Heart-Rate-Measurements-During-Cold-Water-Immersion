import 'package:flutter/material.dart';
 void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    const title = 'Viking Bath';
    return MaterialApp(
        title: title,
        home: Scaffold(
        appBar: AppBar(
        title: const Text(title),
       ),
      body: const MyTextWidget(),
      ),
    );
  }
}



class MyTextWidget extends StatefulWidget {
 const MyTextWidget({Key? key}) : super(key: key);
 @override
    State<MyTextWidget> createState() => _MyTextWidget();
  }
class _MyTextWidget extends State<MyTextWidget> {
    int count = 0;
    @override

    Widget build(BuildContext context){
      return GestureDetector(
        onTap: () {
        setState((){
        count++;
      });
    },
    child: Center(child: Text('Click Me: $count')),
  );
 }
}