import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:sirius/Widgets.dart/Widgets.dart';
import 'Question.dart';

void main() => runApp(const myHomePage());

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  bool selected = false;
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
                Stack(
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
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.25),
                            ),
                            height: 600,
                            width: 355,
                            child: Column(
                              children: const [
                                SizedBox(
                                  height: 150,
                                ),
                                /*
                                Container(
                                  height: 400,
                                  width: 340,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(255, 144, 202, 250)
                                                .withOpacity(0.8),
                                            Color.fromARGB(255, 112, 114, 190)
                                                .withOpacity(0.8),
                                          ])),
                                ),
                                */
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Bounceable(
                        onTap: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(255, 88, 93, 196),
                                Color.fromARGB(255, 21, 27, 206),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 88, 93, 196),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 10.0,
                              ),
                            ],
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
                                  "Want to learn something?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                HPButtons("Level 6", 0.59, 0.535, 100, 150, _myFunction),
                HPButtons("Level 5", 0.59, 0.085, 100, 150, _myFunction),
                HPButtons("Level 4", 0.42, 0.535, 100, 150, _myFunction),
                HPButtons("Level 3", 0.42, 0.085, 100, 150, _myFunction),
                HPButtons("Level 2", 0.25, 0.535, 100, 150, _myFunction),
                HPButtons("Level 1", 0.25, 0.085, 100, 150, _myFunction),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
