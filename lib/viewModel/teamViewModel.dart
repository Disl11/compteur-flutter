import 'package:compteur/api/api.dart';
import 'package:flutter/material.dart';
import 'package:compteur/models/players.dart';

class TeamViewModel extends ChangeNotifier {
  List<Players> playersTeamA = [];
  List<Players> playersTeamB = [];
  List<Players> mercato = [];
  bool isLoading = true;

  Future loadUserA() async {
    //signaler en cour de chargemetn
    isLoading = true;
    // avertir l'ui avec notifyListners qu'il doit reconstruire car l'état a changé
    notifyListeners();
    // appel de l'api
    final players = await PlayersRepo.getPlayers();
    //condition
    playersTeamA.clear();
    playersTeamB.clear();
    mercato.clear();

    for (int i = 0; i < players.length; ++i) {
      if (i < 10) {
        playersTeamA.add(players[i]);
      } else if (i < 20) {
        playersTeamB.add(players[i]);
      } else {
        mercato.add(players[i]);
      }
    }

    //indiquer chargement terminer
    isLoading = false;
    // avertir l'ui qu'elle peu affiché list des joueur
    notifyListeners();
  }

  void remouvePlayer(int index, String team) {
    final Players player;

    if (team == 'A') {
      player = playersTeamA.removeAt(index);
    } else if (team == 'B') {
      player = playersTeamB.removeAt(index);
    } else {
      return;
    }

    mercato.add(player);
    notifyListeners();
  }

  void transferPlayer(int index, String team) {
    final player = mercato.removeAt(index);

    if (team == 'A') {
      playersTeamA.add(player);
    } else if (team == 'B') {
      playersTeamB.add(player);
    } else {
      return;
    }

    notifyListeners();
  }
}
