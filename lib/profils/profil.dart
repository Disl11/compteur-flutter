import 'package:compteur/models/players.dart';
import 'package:flutter/material.dart';

class Profils extends StatelessWidget {
  final Players playerId;

  Profils({super.key, required this.playerId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profil")),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(playerId.image, height: 100, width: 100),
                Text(
                  "Nom : ${playerId.lastName}",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Prenom : ${playerId.firstName}",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Age : ${playerId.age} ans ",
                  style: TextStyle(fontSize: 15),
                ),
                Text("Taille : ${playerId.height}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
