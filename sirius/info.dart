import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(
  home: InfoCard(),
),
);

class InfoCard extends StatelessWidget{
  const InfoCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serious'),
            centerTitle: true,
      ),
    body: ElevatedButton(
            onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage())
            );
            },
            child: Container(
            padding: EdgeInsets.fromLTRB(100.0,80.0,100.0,80.0),
            margin: EdgeInsets.all(30.0),
            color: Colors.grey[200],
            child: Text('Space is a place for life!'),
          ),
        ),
        );

}
}

class SecondPage extends StatelessWidget{
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serious'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('You are interested in this topic?'),
      ),
    );
  }

}