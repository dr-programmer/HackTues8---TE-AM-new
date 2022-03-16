import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Pop());

class Pop extends StatefulWidget {
  const Pop({Key? key}) : super(key: key);

  @override
  State<Pop> createState() => _PopState();
}

class _PopState extends State<Pop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 55, 100),
      appBar: AppBar(
        title: const Text('First question'),
        backgroundColor: Color.fromARGB(255, 0, 55, 100),
      ),
      body: const Text('Hello'),
    );
  }
}
