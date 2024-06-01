import 'dart:math';
import 'dart:developer' as console show log;

import 'package:flutter/material.dart';

class RandomColors extends StatefulWidget {
  const RandomColors({Key? key}) : super(key: key);

  @override
  State<RandomColors> createState() => _RandomColorsState();
}

class _RandomColorsState extends State<RandomColors> {
  int _currentIndex = 0;

  @override
  void initState() {
    final random = Random();
  _currentIndex = random.nextInt(allColors.length);
    super.initState();
  }

  // changeRandomColor() {
  //   List<Color> allColors = [
      // Colors.green,
      // Colors.pink,
      // Colors.brown,
      // Colors.orange,
      // Colors.blueAccent,
      // Colors.yellow,
      // Colors.cyan,
      // Colors.tealAccent,
      // Colors.purpleAccent,
      // Colors.purple,
      // Colors.deepOrangeAccent,
  //   ];
  //   final random = Random();
  //   firstColor = allColors[random.nextInt(allColors.length)];
  //   console.log(firstColor.toString());
  //   setState(() {});
  // }

  List<Color> allColors = <Color>[
    Colors.green,
      Colors.pink,
      Colors.brown,
      Colors.orange,
      Colors.blueAccent,
      Colors.yellow,
      Colors.cyan,
      Colors.tealAccent,
      Colors.purpleAccent,
      Colors.purple,
      Colors.deepOrangeAccent,
  ];

  void changeColor() {
    _currentIndex = (_currentIndex + 1) % allColors.length;
   setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: allColors[_currentIndex],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 62),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  radius: 300,
                  splashColor: Colors.black38,
                  borderRadius: BorderRadius.circular(30),
                  onTap: changeColor,
                  child: const Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
