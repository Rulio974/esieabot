//@dart=2.9

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'controlleur.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    // ]);

    final double _height = MediaQuery.of(context).size.height;
    final double _widht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('esieabot controller'),
        centerTitle: true,
        //taille de l'écran
        toolbarHeight: 0.1 * _height,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            SizedBox(
              height: 100,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Controlleur()),
                  );
                },
                child: const Text('Connexion', style: TextStyle(fontSize: 30)),
              ),
            ),
            const Expanded(child: SizedBox()),
            SizedBox(
              height: 100,
              child: TextButton(
                onPressed: () {},
                child: const Text('Paramètres', style: TextStyle(fontSize: 30)),
              ),
            ),
            const SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
