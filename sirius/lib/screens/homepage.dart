import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:sirius/Widgets.dart/Widgets.dart';
import 'Question.dart';
import 'Variables.dart';

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
    double hmywidth = MediaQuery.of(context).size.width;
    double hmyheight = MediaQuery.of(context).size.height;
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
                color: Color.fromARGB(255, 42, 26, 116),
              ),
            ),
            body: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      color: Color.fromARGB(255, 42, 26, 116),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      Bounceable(
                        onTap: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
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
                                ),
                              ],
                            ),
                            child: SizedBox(
                              height: 165,
                              width: 390,
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 70, 0, 10),
                                    child: Text(
                                      "Want to learn something?",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                HPButtons("Level 6", 0.59, 0.520, 120, 185, _myFunction),
                HPButtons("Level 5", 0.59, 0.030, 120, 185, _myFunction),
                HPButtons("Level 4", 0.42, 0.520, 120, 185, _myFunction),
                HPButtons("Level 3", 0.42, 0.030, 120, 185, _myFunction),
                HPButtons("Level 2", 0.24, 0.520, 120, 185, _myFunction),
                HPButtons("Level 1", 0.24, 0.030, 120, 185, _myFunction),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("geeksforgeeks"),
      ),
      body: Center(
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
          onPressed: () {
            FirebaseFirestore.instance
                .collection('data')
                .doc('xpdoc')
                .update({'xp': sxp});
          },
        ),
      ),
    );
  }
}
