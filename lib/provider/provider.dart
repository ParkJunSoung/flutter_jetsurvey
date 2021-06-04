import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {

  Map<String, bool> freeTime = {
    "Read": false,
    "Work out": false,
    "Draw": false,
    "Play video games": false,
    "Dance": false,
    "Watch movies": false,
  };

}