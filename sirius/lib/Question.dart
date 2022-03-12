import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Variables.dart';

class Question extends StatefulWidget {
  Question({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;
  String questionText = '';
  String otg = '';

  // Question({required this.id}) {
  //   //fetch
  // }
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int idQ = 0;

  @override
  void initState() {
    idQ = widget.id;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 26, 116),
      appBar: AppBar(
        title: Text('Question' + idQ.toString()),
        backgroundColor: Color.fromARGB(255, 42, 26, 116),
      ),
      body: Column(
        children: [
          const SafeArea(
            child: SizedBox(
              height: 230,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "What is the brightest star in the Earth's night sky?",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ),
          Stack(children: [
            Container(
              margin: EdgeInsets.all(30),
              height: 300,
              child: Align(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonPadding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text('Scorpius' + idQ.toString()),
                      backgroundColor: Color.fromARGB(255, 81, 0, 187),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        xp += 100;
                        sxp = xp.toString();
                      },
                      label: Text('Sirius' + idQ.toString()),
                      backgroundColor: Color.fromARGB(255, 81, 0, 187),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text('Leo' + idQ.toString()),
                      backgroundColor: Color.fromARGB(255, 81, 0, 187),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 81, 0, 187),
                ),
                child: const Text('Next'),
                onPressed: () {
                  Navigator.push(
                      context, FadeRoute(page: Question(id: idQ + 1)));
                },
              ),
            )
          ]),
        ],
      ),
    );
    return Container();
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: RaisedButton(
          child: Text('Go Back!'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
