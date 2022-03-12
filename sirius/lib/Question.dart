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
      backgroundColor: Color.fromARGB(255, 0, 55, 100),
      appBar: AppBar(
        title: const Text("Question 1"),
        backgroundColor: Color.fromARGB(255, 0, 55, 100),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('RotationTansition'),
            onPressed: () {
              Navigator.push(context, RotationRoute(page: Question(id: 2)));
              xp += 100;
              sxp = xp.toString();
            },
          ),
        ],
      ),
    );
    return Container();
  }
}

class RotationRoute extends PageRouteBuilder {
  final Widget page;
  RotationRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionDuration: Duration(seconds: 1),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              RotationTransition(
            turns: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.linear,
              ),
            ),
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
