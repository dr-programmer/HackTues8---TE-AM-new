import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'Variables.dart';
import 'home_screen.dart';

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
    print(idQ);
    if (idQ < 0) {
      idQ = 0;
    }
  }

  _mySetXP() {
    FirebaseFirestore.instance
        .collection('data')
        .doc('xpdoc')
        .update({'xp': sxp});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 42, 26, 116),
        appBar: AppBar(
          title: Text('Question' +
              (idQ + 1).toString() +
              '          ' +
              count.toString() +
              '/12'),
          backgroundColor: Color.fromARGB(255, 42, 26, 116),
        ),
        body: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 500,
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    questions[idQ],
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // SafeArea(
                //   child: SizedBox(
                //     height: 100,
                //     child: Padding(
                //       padding: EdgeInsets.all(10.0),
                //       child: Text(
                //         questions[idQ],
                //         style: TextStyle(fontSize: 25, color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      height: 300,
                      child: Align(
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          buttonPadding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          children: [
                            ButtonTheme(
                              minWidth: 500.0,
                              height: 50.0,
                              child: RaisedButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                )),
                                onPressed: () {
                                  Navigator.push(context,
                                      FadeRoute(page: Question(id: idQ + 1)));
                                  if (idQ >= 11) {
                                    count = 0;
                                    Navigator.push(
                                        context, FadeRoute(page: HomeScreen()));
                                  } else if (rightAnswers[idQ] ==
                                      answers[idQ * 3]) {
                                    count++;
                                    xp += 100;
                                    sxp = xp.toString();
                                    print("Yay!");
                                  } else {
                                    misQuestions[i] = idQ;
                                    i++;
                                    print("Naur!");
                                  }
                                },
                                color: Color.fromARGB(255, 81, 0, 187),
                                child: Text(
                                  answers[idQ * 3],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                elevation: 0.8,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ButtonTheme(
                              minWidth: 400.0,
                              height: 50.0,
                              child: RaisedButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                )),
                                onPressed: () {
                                  Navigator.push(context,
                                      FadeRoute(page: Question(id: idQ + 1)));
                                  if (idQ >= 11) {
                                    count = 0;
                                    Navigator.push(
                                        context, FadeRoute(page: HomeScreen()));
                                  } else if (rightAnswers[idQ] ==
                                      answers[idQ * 3 + 1]) {
                                    count++;
                                    xp += 100;
                                    sxp = xp.toString();
                                    print("Yay!");
                                  } else {
                                    misQuestions[i] = idQ;
                                    i++;
                                    print("Naur!");
                                  }
                                },
                                color: Color.fromARGB(255, 81, 0, 187),
                                child: Text(
                                  answers[idQ * 3 + 1],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                elevation: 0.8,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ButtonTheme(
                              minWidth: 400.0,
                              height: 50.0,
                              child: RaisedButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                )),
                                onPressed: () {
                                  Navigator.push(context,
                                      FadeRoute(page: Question(id: idQ + 1)));
                                  if (idQ >= 11) {
                                    count = 0;
                                    Navigator.push(
                                        context, FadeRoute(page: HomeScreen()));
                                  } else if (rightAnswers[idQ] ==
                                      answers[idQ * 3 + 2]) {
                                    count++;
                                    xp += 100;
                                    sxp = xp.toString();
                                    print("Yay!");
                                  } else {
                                    misQuestions[i] = idQ;
                                    i++;
                                    print("Naur!");
                                  }
                                },
                                color: Color.fromARGB(255, 81, 0, 187),
                                child: Text(
                                  answers[idQ * 3 + 2],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                elevation: 0.8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ])
        ]));
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
