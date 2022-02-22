//@dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:control_pad/control_pad.dart';

// ignore: use_key_in_widget_constructors
class Controlleur extends StatefulWidget {
  @override
  ControlleurState createState() => ControlleurState();
}

class ControlleurState extends State<Controlleur> {
  @override

  // ignore: unused_element
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    return Scaffold(
      appBar: AppBar(),
      // ignore: avoid_unnecessary_containers
      body: Row(children: [
        const SizedBox(
          width: 100,
        ),
        Container(
          color: Colors.white,
          child: JoystickView(
            size: 150,
            showArrows: false,
          ),
        ),
        Expanded(child: Container()),
        Container(
          color: Colors.white,
          child: JoystickView(
            size: 150,
            showArrows: false,
          ),
        ),
        const SizedBox(
          width: 100,
        ),
      ]),
    );
  }
}
