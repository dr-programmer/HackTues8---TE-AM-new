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
    return GestureDetector(
      onHorizontalDragUpdate: ((details) {
        if (details.delta.dx < 0) {
          print("You swiped!!!");
        }
      }),
      child: Container(
        child: Stack(
          children: <Widget>[
            Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text('Home Page'),
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                        Color.fromARGB(255, 112, 114, 190),
                        Color.fromARGB(255, 144, 202, 250)
                      ])),
                ),
              ),
              body: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Color.fromARGB(255, 112, 114, 190),
                          Color.fromARGB(255, 144, 202, 250)
                        ])),
                  ),
                  Positioned(
                    top: 43,
                    left: 37,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromARGB(255, 164, 166, 211),
                            Color.fromARGB(255, 116, 119, 201),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        height: 100,
                        width: 330,
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 35,
                            ),
                            Text(
                              "Hello! Want to learn something?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 81, 0, 187),
                                fontSize: 23,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  HPButtons("Level 5", 0.65, 0.1, 100, 150, _myFunction),
                  HPButtons("Level 4", 0.45, 0.55, 100, 150, _myFunction),
                  HPButtons("Level 3", 0.42, 0.1, 150, 150, _myFunction),
                  HPButtons("Level 2", 0.22, 0.55, 150, 150, _myFunction),
                  HPButtons("Level 1", 0.25, 0.1, 100, 150, _myFunction),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
