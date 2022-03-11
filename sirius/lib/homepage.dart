// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const myHomePage());

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 80, 146),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 250, 0, 10),
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(190, 130, 0, 10),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: Text("hello"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150, 30, 0, 500),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: Text("nice"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(230, 400, 0, 0),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: Text("almost last"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 500, 0, 0),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: Text("last"),
            ),
          ),
        ],
      ),
    );
  }
}
