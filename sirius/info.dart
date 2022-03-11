import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(
  home: InfoCard(),
),);

class InfoCard extends StatelessWidget{
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serious'),
            centerTitle: true,
      ),
    body: Container(
    padding: EdgeInsets.fromLTRB(10.0,20.0,30.0,40.0),
    margin: EdgeInsets.all(30.0),
    child: Text('Space is a place for life!'),
    ),
    );
}
}
