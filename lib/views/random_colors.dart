import 'dart:math';
import 'dart:developer' as console show log;

import 'package:flutter/material.dart';

class RandomColors extends StatefulWidget {
  const RandomColors({Key? key}) : super(key: key);

  @override
  State<RandomColors> createState() => _RandomColorsState();
}

class _RandomColorsState extends State<RandomColors> {
  late Color firstColor;

  @override
  void initState() {
    changeRandomColor();
    super.initState();
  }

  changeRandomColor() {
    List<Color> allColors = [
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
    final random = Random();
    firstColor = allColors[random.nextInt(allColors.length)];
    console.log(firstColor.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
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
                  onTap: changeRandomColor,
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
