import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sirius/reusable_widgets/reusable_widget.dart';
import 'package:sirius/screens/Variables.dart';
import 'home_screen.dart';
import 'signup_screen.dart';
import 'package:sirius/utils/color_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  String errorText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/logo1.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField(
                    "E-mail", Icons.mail, false, _emailTextController),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 13,
                ),
                Text(errorText, style: TextStyle(color: Colors.red)),
                signInSignUpButton(context, true, () {
                  email = _emailTextController.text;
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                    if (error.toString() ==
                        "[firebase_auth/wrong-password] The password is invalid or the user does not have a password.") {
                      print("wrong password wrong");
                      setState(() {
                        errorText = "Wrong password!";
                      });
                    } else if (error.toString() ==
                            "[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted." ||
                        error.toString() ==
                            "[firebase_auth/invalid-email] The email address is badly formatted.") {
                      setState(() {
                        errorText = "Wrong email!";
                      });
                    } else {
                      setState(() {
                        errorText = "";
                      });
                    }
                  });
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
