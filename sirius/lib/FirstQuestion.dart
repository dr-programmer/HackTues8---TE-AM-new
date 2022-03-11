import 'package:flutter/material.dart';
import 'PopUp.dart';

void main() => runApp(const Testing());

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
            appBar: AppBar(
          title: Text("Home"),
        )),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            Column(children: [
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(createRoute());
                  },
                  child: const Text('First Question')),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Secod question')),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Third question')),
            ]),
          ],
        ),
      ],
    );
  }
}
