import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:sirius/screens/signin_screen.dart';
import 'package:sirius/screens/Variables.dart';
import 'package:sirius/main.dart';
import 'menu_item.dart';
import 'menu_items.dart';
import 'about.dart';

void demo() async {
  DocumentSnapshot documentSnapshot;

  await FirebaseFirestore.instance
      .collection('Users') // suppose you have a collection named "Users"
      .doc(email)
      .get()
      .then((value) {
    sxp = value.toString(); // you get the document here
  });
}

void main() => runApp(const MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);
  _mySetXP() {
    FirebaseFirestore.instance
        .collection('Users')
        .doc(email)
        .update({'xp': sxp});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromARGB(255, 42, 26, 116),
        appBar: AppBar(
          actions: [
            PopupMenuButton<MenuItem>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                ...MenuItems.itemsFirst.map(buildItem).toList(),
              ],
            )
          ],
          title: const Text('Account'),
          centerTitle: true,
          flexibleSpace: Container(
            color: Color.fromARGB(255, 42, 26, 116),
          ),
        ),
        body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance
              .collection('Users')
              .doc(email)
              .snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');

            if (snapshot.hasData) {
              var output = snapshot.data!.data();
              var value = output!['xp'];
              if (xp == 0) sxp = value;
              _mySetXP();
              return Stack(
                children: [
                  Container(
                    color: Color.fromARGB(255, 42, 26, 116),
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0),
                          child: Column(
                            children: [
                              Bounceable(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color.fromARGB(255, 81, 0, 187),
                                  ),
                                  height: 500,
                                  width: 500,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const Center(
                                          child: CircleAvatar(
                                            radius: 40.0,
                                            backgroundColor: Color.fromARGB(
                                                255, 110, 102, 199),
                                            backgroundImage:
                                                AssetImage('assets/thumb.jpg'),
                                          ),
                                        ),
                                        const Divider(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          height: 60.0,
                                          thickness: 1,
                                        ),
                                        const Text(
                                          'NAME',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            letterSpacing: 2.0,
                                          ),
                                        ),
                                        const SizedBox(height: 10.0),
                                        const Text(
                                          'Admin',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28.0,
                                            letterSpacing: 2.0,
                                          ),
                                        ),
                                        const SizedBox(height: 30.0),
                                        const Text(
                                          'HOMETOWN',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            letterSpacing: 2.0,
                                          ),
                                        ),
                                        const SizedBox(height: 10.0),
                                        const Text(
                                          'Sofia, Bulgaria',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28.0,
                                            letterSpacing: 2.0,
                                          ),
                                        ),
                                        const SizedBox(height: 30.0),
                                        const Text(
                                          'CURRENT SIRIUS XP',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            letterSpacing: 2.0,
                                          ),
                                        ),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          value,
                                          style: const TextStyle(
                                            color: Colors.white,
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
                                            const SizedBox(width: 10.0),
                                            Text(
                                              email,
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
                                ),
                              ),
                              const SizedBox(
                                height: 99,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*
                  Bounceable(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: FloatingActionButton.extended(
                          onPressed: _mySetXP(),
                          icon: const Icon(Icons.save),
                          label: const Text("Save"),
                          backgroundColor: Color.fromARGB(255, 81, 0, 187),
                        ),
                      ),
                    ),
                  ),
                  */
                ],
              );
            }

            return Center(child: CircularProgressIndicator());
          },
        ));
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem<MenuItem>(
      value: item,
      child: Row(
        children: [
          Icon(item.icon, color: Color.fromARGB(255, 0, 55, 100), size: 20),
          //const SizedBox(width: 12),
          Text(
            item.text,
            style: TextStyle(color: Color.fromARGB(255, 0, 55, 100)),
          ),
        ],
      ));

  void onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.itemSignOut:
        FirebaseAuth.instance.signOut().then((value) {
          // ignore: avoid_print
          print("Signed out");
          sxp = '0';
          xp = 0;
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignInScreen()));
        });
        break;
    }
  }
}
