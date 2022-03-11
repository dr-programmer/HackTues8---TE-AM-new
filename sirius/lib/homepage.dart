// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'FirstQuestion.dart';
import 'PopUp.dart';

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
      //color: Color.fromARGB(255, 0, 80, 146),
      child: Stack(
        children: <Widget>[
          const Scaffold(
            backgroundColor: Color.fromARGB(255, 0, 55, 100),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 350, 0, 10),
            child:
                ElevatedButton(onPressed: () {}, child: const Icon(Icons.star)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(250, 230, 0, 10),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.star),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150, 100, 0, 500),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.star),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(230, 500, 0, 0),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.star),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 600, 0, 0),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: ElevatedButton(
              //backgroundColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(createRoute());
              },
              child: const Icon(Icons.star),
            ),
          ),
          //const Testing(),
        ],
      ),
    );
  }
}
