import 'package:flutter/material.dart';

class CompteurViewModel extends ChangeNotifier {
  int scoreTeamA = 0;
  int scoreTeamB = 0;

  void addPointTeamA(int addPoint) {
    scoreTeamA += addPoint;
    notifyListeners();
  }

  void addPointTeamB(int addPoint) {
    scoreTeamB += addPoint;
    notifyListeners();
  }

  void resetPoint() {
    scoreTeamA = 0;
    scoreTeamB = 0;
    notifyListeners();
  }
}
