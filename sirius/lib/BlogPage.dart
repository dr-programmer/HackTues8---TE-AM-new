import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: InfoCard(),
      ),
    );

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 55, 100),
        appBar: AppBar(
          title: const Text('Daily SIRIUS Blog'),
          backgroundColor: Color.fromARGB(255, 0, 55, 100),
        ),
        body: Column(
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    height: 170,
                    width: 1000,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondPage()));
                        },
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'Images/SIRIUS.jpg',
                                  height: 130,
                                )),
                            const Text(
                              '   SIRIUS - Star or App',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 55, 100),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 55, 100),
        title: const Text('Serious'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('You are interested in this topic?',
            style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
