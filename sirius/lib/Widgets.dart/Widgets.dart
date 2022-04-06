import 'package:flutter/material.dart';

class HPButtons extends StatelessWidget {
  HPButtons(this.name, this.h, this.w, this.hl, this.wl, this.onPressed);

  final String name;
  final double h;
  final double w;
  final double hl;
  final double wl;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.width;
    double myheight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Positioned(
          top: myheight * h,
          left: mywidth * w,
          child: ButtonTheme(
            minWidth: wl,
            height: hl,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: RaisedButton(
                onPressed: onPressed,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                color: Color.fromARGB(255, 81, 0, 187),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
