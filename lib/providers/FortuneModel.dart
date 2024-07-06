import 'dart:math';

import 'package:flutter/material.dart';

class Fortunemodel with ChangeNotifier {

  String _currentFortune = "";

  List<String> fortunes = [
    "You shall be health",
    "You shall prosper beyond measure.",
    "Be careful that you do not abandon your fathers house for all the days of your life "

  ];

  String get currentFortune => _currentFortune;


  Fortunemodel(){
    getRandomFortune();
  }

  void getRandomFortune() {
    var random = Random();

    int randNum = random.nextInt(fortunes.length);
    _currentFortune = fortunes[randNum];
    notifyListeners();
  }


}