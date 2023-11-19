import 'package:flutter/material.dart';
import 'package:random_background_color/views/random_colors.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RandomColors(),
    ),
  );
}