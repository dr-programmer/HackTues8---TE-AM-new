import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(const MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ignore: prefer_const_constructors
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/thumb.jpg'),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: Text(
                    'Antonio Stanislavov Gotev',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            Divider(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 60.0,
            ),
            // ignore: prefer_const_constructors
            const SizedBox(height: 10.0),
            // ignore: prefer_const_constructors
            Text(
              'HOMETOWN',
              style: const TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Beijing, China',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            // ignore: prefer_const_constructors
            Text(
              'CURRENT NINJA LEVEL',
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '8',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'chun.li@thenetninja.co.uk',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
