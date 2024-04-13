import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            "game...",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 2, 117, 121)),
          ),
        ),
        body: game(),
        backgroundColor: Colors.cyan,
      ),
    ),
  );
}

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  int leftImage = 1;
  int rightImage = 1;
  void change() {
    leftImage = Random().nextInt(8) + 1;
    rightImage = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 120),
          child: Text(
            
            leftImage == rightImage ? 'مبروك لقد نجحت' : 'حاول مرة أخرى',
            style: TextStyle(
                backgroundColor: Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    change();
                  });
                },
                child: Image.asset("images/image-$leftImage.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    change();
                  });
                },
                child: Image.asset("images/image-$rightImage.png"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
