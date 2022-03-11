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
    return Container(
      child: const Align(
        alignment: Alignment.topCenter,
        child: Text(
          'About SIRIUS',
          style: TextStyle(
              fontSize: 25, color: Color.fromARGB(255, 189, 184, 235)),
        ),
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('Images/GALAXYPHOTO.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
