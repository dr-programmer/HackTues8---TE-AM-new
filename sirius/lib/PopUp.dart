import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 0, 187),
      ),
      body: UpdateText(),
    );
  }
}

class UpdateText extends StatefulWidget {
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State {
  String textHolder = 'Old Sample Text...!!!';

  changeText() {
    setState(() {
      textHolder = 'New Sample Text...';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 55, 100),
        body: Align(
            child: Column(children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text('$textHolder', style: TextStyle(fontSize: 21))),
          FloatingActionButton(
            onPressed: () => changeText(),
            backgroundColor: Color.fromARGB(255, 81, 0, 187),
            child: const Text('next'),
          ),
        ])));
  }
}
