//@dart=2.9

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'controlleur.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    final double _height = MediaQuery.of(context).size.height;
    final double _widht = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: _height / 25,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            const SizedBox(height: 100),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0Xffdcebfa),
              ),
              width: _widht / 1.5,
              height: _height / 10,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Controlleur()),
                  );
                },
                child: const Text('Connexion',
                    style: TextStyle(fontSize: 30, color: Color(0xff2daae1))),
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0Xffdcebfa),
              ),
              width: _widht / 1.5,
              height: _height / 10,
              child: TextButton(
                onPressed: () {},
                child: const Text('Paramètres',
                    style: TextStyle(fontSize: 30, color: Color(0xff2daae1))),
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              width: _widht / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0Xffdcebfa),
              ),
              height: _height / 10,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Acheter',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff2daae1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
