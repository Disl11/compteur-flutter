import 'package:compteur/api/api.dart';
import 'package:flutter/material.dart';

class TeamAViewModel extends ChangeNotifier {
  List playersTeamA = [];
  bool isLoading = true;

  Future loadUserA() async {
    //signaler en cour de chargemetn
    isLoading = true;
    // avertir l'ui avec notifyListners qu'il doit reconstruire car l'état a changé
    notifyListeners();
    // appel de l'api
    final players = await PlayersRepo.getPlayers();
    //condition
    playersTeamA = players.take(10).toList();
    //indiquer chargement terminer
    isLoading = false;
    // avertir l'ui qu'elle peu affiché list des joueur
    notifyListeners();
  }
}
