import 'package:flutter/material.dart';
import 'Question.dart';

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
          Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Home Page'),
              backgroundColor: Color.fromARGB(255, 42, 26, 116),
            ),
            backgroundColor: Color.fromARGB(255, 42, 26, 116),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 350, 0, 10),
            child: FloatingActionButton.extended(
                backgroundColor: Color.fromARGB(255, 81, 0, 187),
                onPressed: () {},
                icon: const Icon(Icons.star),
                label: const Text('Level 3')),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(250, 230, 0, 10),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: FloatingActionButton.extended(
              backgroundColor: Color.fromARGB(255, 81, 0, 187),
              onPressed: () {},
              icon: const Icon(Icons.star),
              label: const Text('Level 4'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150, 100, 0, 500),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: FloatingActionButton.extended(
              backgroundColor: Color.fromARGB(255, 81, 0, 187),
              onPressed: () {},
              icon: const Icon(Icons.star),
              label: const Text('Level 5'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(230, 500, 0, 0),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: FloatingActionButton.extended(
              backgroundColor: Color.fromARGB(255, 81, 0, 187),
              onPressed: () {},
              icon: const Icon(Icons.star),
              label: const Text('Level 2'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 600, 0, 0),
            //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
            child: FloatingActionButton.extended(
                backgroundColor: Color.fromARGB(255, 81, 0, 187),
                //backgroundColor: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Question(id: 0)),
                  );
                },
                icon: const Icon(Icons.star),
                label: const Text('Level 1')),
          ),
          //const Testing(),
        ],
      ),
    );
  }
}
