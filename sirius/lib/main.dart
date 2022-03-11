import 'package:flutter/material.dart';
import 'profile.dart';
import 'homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
<<<<<<< Updated upstream
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
=======
    myHomePage(),
>>>>>>> Stashed changes
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    NinjaCard(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< Updated upstream
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
=======
>>>>>>> Stashed changes
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
<<<<<<< Updated upstream
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
=======
            backgroundColor: Colors.yellow,
>>>>>>> Stashed changes
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'Something',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
<<<<<<< Updated upstream
            icon: Icon(Icons.settings),
            label: 'Settings',
=======
            icon: Icon(Icons.account_circle),
            label: 'Account',
>>>>>>> Stashed changes
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
