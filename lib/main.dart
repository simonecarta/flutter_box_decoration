import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text('Box decoration'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CreateRows(),
              Expanded(child: CreateColumns()),
            ],
          ),
        ),
      ),
    );
  }

  // METHODS

  Column CreateColumns() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            child: CreateContainer('2', Colors.purple.shade200, margin: 10)),
        Expanded(
            child: CreateContainer('3', Colors.purple.shade300, margin: 10)),
        Expanded(
            child: CreateContainer('4', Colors.purple.shade400, margin: 10)),
        Expanded(
            child: CreateContainer('5', Colors.purple.shade500, margin: 10)),
      ],
    );
  }

  Row CreateRows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CreateContainer('1', Colors.purple.shade100),
        CreateContainer('2', Colors.purple.shade200),
        CreateContainer('3', Colors.purple.shade300),
        CreateContainer('4', Colors.purple.shade400),
        CreateContainer('5', Colors.purple.shade500),
      ],
    );
  }
}

  Container CreateContainer
  (String text, Color color, {double margin = 0}) {
  return Container(
    margin: EdgeInsets.only(top: margin),
    width: 50,
    height: 50,
    color: color,
    child: Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 36),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
