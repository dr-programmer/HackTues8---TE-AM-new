import 'package:flutter/material.dart';
import 'package:sirius/Widgets.dart/Widgets.dart';
import 'Question.dart';

void main() => runApp(const myHomePage());

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  _myFunction() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Question(id: 0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.width;
    double myheight = MediaQuery.of(context).size.height;
    return Container(
      //color: Color.fromARGB(255, 0, 80, 146),
      child: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Home Page'),
              backgroundColor: Color.fromARGB(255, 42, 26, 116),
            ),
            backgroundColor: Color.fromARGB(255, 42, 26, 116),
          ),
          HPButtons("Level 5", 0.55, 0.1, _myFunction),
          HPButtons("Level 4", 0.35, 0.55, _myFunction),
          HPButtons("Level 3", 0.35, 0.1, _myFunction),
          HPButtons("Level 2", 0.15, 0.55, _myFunction),
          HPButtons("Level 1", 0.15, 0.1, _myFunction),
        ],
      ),
    );
  }
}
