import 'package:flutter/material.dart';

void main() => runApp(const AboutPage());

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 26, 116),
      appBar: AppBar(
        title: const Text("About SIRIUS"),
        backgroundColor: Color.fromARGB(255, 42, 26, 116),
      ),
      body: Container(
        child: Column(
          children: const [
            Text(
              "Made by TE-AM",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
