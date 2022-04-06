import 'package:flutter/material.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';

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
        //backgroundColor: Color.fromARGB(255, 42, 26, 116),
        appBar: AppBar(
          title: const Text('SIRIUS Material'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                  Color.fromARGB(255, 112, 114, 190),
                  Color.fromARGB(255, 144, 202, 250)
                ])),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                Color.fromARGB(255, 112, 114, 190),
                Color.fromARGB(255, 144, 202, 250)
              ])),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Bounceable(
                  onTap: (() {
                    context.pushTransparentRoute(SecondPage());
                  }),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: Color.fromARGB(255, 81, 0, 187),
                          height: 170,
                          width: 1000,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'Images/SIRIUS.jpg',
                                    height: 130,
                                  )),
                              const Text(
                                '   Sirius - star or app',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Bounceable(
                  onTap: () {
                    context.pushTransparentRoute(ThirdPage());
                  },
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: Color.fromARGB(255, 81, 0, 187),
                          height: 170,
                          width: 1000,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'Images/SSystem.jpg',
                                    height: 130,
                                  )),
                              const Text(
                                '   Level 1',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Bounceable(
                  onTap: (() {
                    context.pushTransparentRoute(UnderDevelopment());
                  }),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: Color.fromARGB(255, 81, 0, 187),
                          height: 170,
                          width: 1000,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'Images/Level3.jpg',
                                    height: 130,
                                  )),
                              const Text(
                                '   Level 2',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Bounceable(
                  onTap: () {
                    context.pushTransparentRoute(UnderDevelopment());
                  },
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: Color.fromARGB(255, 81, 0, 187),
                          height: 170,
                          width: 1000,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'Images/Level4.jpg',
                                    height: 130,
                                  )),
                              const Text(
                                '   Level 3',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Bounceable(
                  onTap: () {
                    context.pushTransparentRoute(UnderDevelopment());
                  },
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: Color.fromARGB(255, 81, 0, 187),
                          height: 170,
                          width: 1000,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'Images/Level5.jpg',
                                    height: 130,
                                  )),
                              const Text(
                                '   Level 4',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      onDismissed: () {
        Navigator.of(context).pop();
      },
      direction: DismissiblePageDismissDirection.multi,
      isFullScreen: false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 81, 0, 187),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 81, 0, 187),
          title: const Text('SIRIUS - star or app'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('Images/SIRIUSinBlog.jpg'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Sirius, also known as the Dog Star or Sirius A, is the brightest star in Earth's night sky. The name means 'glowing' in Greek — a fitting description, as only a few planets, the full moon and the International Space Station outshine this star.",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Most interestingly our app is also called Sirius. It is the brightest creation we have made yet.",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      onDismissed: () {
        Navigator.of(context).pop();
      },
      direction: DismissiblePageDismissDirection.multi,
      isFullScreen: false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 81, 0, 187),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 81, 0, 187),
          title: const Text('Level 1'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('Images/SSystem.jpg'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "The Solar System is the gravitationally bound system of the Sun and the objects that orbit it. The planets in our Solar system are Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptun (from the Sun outwards). Pluton was a part of the Solar system but recently it was said that it isn't a planet. Saturn, Jupiter, Uranus and Neptun are gas giants. The Sun is around 10000 degrees celsius.",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "The closest solar system to our Solar system is Alpha Centauri.",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Earth is the planet we live on. It is the only habitable planet in the system. 71% percent of it is water.",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

class UnderDevelopment extends StatelessWidget {
  const UnderDevelopment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      onDismissed: () {
        Navigator.of(context).pop();
      },
      direction: DismissiblePageDismissDirection.multi,
      isFullScreen: false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 81, 0, 187),
        appBar: AppBar(
          title: const Text("Under development"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 81, 0, 187),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 180, 10, 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset('Images/CS.gif'),
          ),
        ),
      ),
    );
  }
}
