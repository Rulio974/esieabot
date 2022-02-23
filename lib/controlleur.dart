//@dart=2.9

// ignore_for_file: avoid_print

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
    final double _height = MediaQuery.of(context).size.height;
    final double _widht = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        // ignore: avoid_unnecessary_containers
        body: Row(children: [
          const SizedBox(
            width: 50,
          ),
          Column(children: [
            const Expanded(child: SizedBox()),
            Container(
              color: Colors.white,
              child: JoystickView(
                onDirectionChanged: (x, y) {
                  print("$x,$y");
                },
                size: 150,
                showArrows: false,
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              color: Colors.white,
              child: JoystickView(
                onDirectionChanged: (x, y) {
                  print("$x $y");
                },
                size: 150,
                showArrows: false,
              ),
            ),
            const Expanded(child: SizedBox())
          ]),
          const Expanded(child: SizedBox()),
          const RotatedBox(
            quarterTurns: 1,
            child: Text("appareil connecté : None"),
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            height: _height,
            width: _widht / 8,
            color: const Color(0xff2daae1),
            child: RotatedBox(
              quarterTurns: 1,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          )
        ]));
  }
}
