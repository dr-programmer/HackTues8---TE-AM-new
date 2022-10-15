import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:sirius/screens/signin_screen.dart';
import 'package:sirius/screens/Variables.dart';
import 'package:sirius/main.dart';
import '../Question.dart';
import 'menu_item.dart';
import 'menu_items.dart';
import 'about.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sirius/reusable_widgets/reusable_widget.dart';
import 'package:sirius/screens/Variables.dart';
import 'package:sirius/utils/color_utils.dart';
import 'home_screen.dart';

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
        .update({'xp': xp});
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
              int value = output!['xp'];
              String vname = output['name'];
              String vcountry = output['country'];
              String vcity = output['city'];
              String vpic = output['picture'];
              if (xp == 0) xp = value;
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
                                  height: 560,
                                  width: 500,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Center(
                                          child: CircleAvatar(
                                            radius: 80.0,
                                            backgroundColor: Color.fromARGB(
                                                255, 110, 102, 199),
                                            backgroundImage:
                                                NetworkImage(vpic.toString()),
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
                                        Text(
                                          vname,
                                          style: const TextStyle(
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
                                        Text(
                                          '$vcity, $vcountry',
                                          style: const TextStyle(
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
                                          value.toString(),
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
      case MenuItems.itemUpdate:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Update()));
        break;
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

var _image;

class Update extends StatefulWidget {
  const Update({Key? key}) : super(key: key);

  @override
  State<Update> createState() => _Update();
}

enum ImageSourceType { gallery, camera }

class _Update extends State<Update> {
  void _handleURLButtonPress(BuildContext context, var type) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type)));
  }

  var Imagepicker = ImagePicker();

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _countryTextController = TextEditingController();
  TextEditingController _cityTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Update profile info",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("000000"),
            hexStringToColor("000000")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    XFile? image = await Imagepicker.pickImage(
                        source: ImageSource.gallery,
                        imageQuality: 50,
                        preferredCameraDevice: CameraDevice.front);
                    setState(() {
                      _image = File(image!.path);
                    });
                  },
                  child: _image != null
                      ? CircleAvatar(
                          radius: 80.0,
                          backgroundImage: FileImage(_image),
                        )
                      : CircleAvatar(
                          radius: 80.0,
                          backgroundColor: Colors.red[800],
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.grey[800],
                          ),
                        ),
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Username", Icons.person_outline, false,
                    _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "E-mail", Icons.mail, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Password", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Country", Icons.location_on, false,
                    _countryTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "City", Icons.location_city, false, _cityTextController),
                const SizedBox(
                  height: 20,
                ),
                UpdateButton(context, false, () async {
                  String oldEmail = email;
                  if (_emailTextController.text.isNotEmpty)
                    email = _emailTextController.text;
                  if (_userNameTextController.text.isNotEmpty)
                    name = _userNameTextController.text;
                  if (_countryTextController.text.isNotEmpty)
                    country = _countryTextController.text;
                  if (_cityTextController.text.isNotEmpty)
                    city = _cityTextController.text;
                  String fileName = path.basename(_image!.path);
                  String downloadURL;
                  var user = FirebaseAuth.instance.currentUser;
                  await user
                      ?.updateEmail(_emailTextController.text)
                      .then((value) {
                    print("Profile has been changed successfully");
                    //DO Other compilation here if you want to like setting the state of the app
                  }).catchError((e) {
                    print("There was an error updating profile");
                  });
                  await user
                      ?.updatePassword(_passwordTextController.text)
                      .then((value) {
                    print("Profile has been changed successfully");
                    //DO Other compilation here if you want to like setting the state of the app
                  }).catchError((e) {
                    print("There was an error updating profile");
                  });
                  final Reference storageReference =
                      FirebaseStorage.instance.ref();
                  UploadTask uploadTask =
                      storageReference.child("image_$fileName").putFile(_image);
                  while (await uploadTask == 0);
                  downloadURL = await storageReference
                      .child('image_$fileName')
                      .getDownloadURL();
                  FirebaseFirestore.instance
                      .collection('Users')
                      .doc(oldEmail)
                      .delete();
                  FirebaseFirestore.instance
                      .collection('Users')
                      .doc(email)
                      .set({
                    'xp': xp,
                    'name': name,
                    'country': country,
                    'city': city,
                    'picture': downloadURL,
                  });
                  Navigator.push(context, FadeRoute(page: HomeScreen()));
                })
              ],
            ),
          ))),
    );
  }
}

class ImageFromGalleryEx extends StatefulWidget {
  final type;
  ImageFromGalleryEx(this.type);

  @override
  ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
}

class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
  var _image;
  var imagePicker;
  var type;

  ImageFromGalleryExState(this.type);

  @override
  void initState() {
    super.initState();
    imagePicker = new ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(type == ImageSourceType.camera
              ? "Image from Camera"
              : "Image from Gallery")),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 52,
          ),
          Center(
            child: GestureDetector(
              onTap: () async {
                var source = type == ImageSourceType.camera
                    ? ImageSource.camera
                    : ImageSource.gallery;
                XFile image = await imagePicker.pickImage(
                    source: source,
                    imageQuality: 50,
                    preferredCameraDevice: CameraDevice.front);
                setState(() {
                  _image = File(image.path);
                });
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(color: Colors.red[200]),
                child: _image != null
                    ? Image.file(
                        _image,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.fitHeight,
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: Colors.red[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 200,
                        height: 200,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[800],
                        ),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
