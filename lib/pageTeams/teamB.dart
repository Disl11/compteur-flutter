import 'package:flutter/material.dart';
import 'package:compteur/api/api.dart';
import 'package:compteur/profils/profil.dart';

class TeamB extends StatefulWidget {
  const TeamB({super.key});

  @override
  State<TeamB> createState() => _TeamBState();
}

class _TeamBState extends State<TeamB> {
  List playersTeamB = [];
  bool isLoading = true;

  @override
  //initialiser le widget
  void initState() {
    super.initState();
    loadUser();
  }

  void loadUser() async {
    final players = await PlayersRepo.getPlayers();
    setState(() {
      playersTeamB = players.skip(10).take(10).toList();
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Players Team B")),
        backgroundColor: Colors.orangeAccent,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 672,
                    width: 250,
                    child: ListView.builder(
                      itemCount: playersTeamB.length,
                      itemBuilder: (Context, index) {
                        final player = playersTeamB[index];
                        return Card(
                          child: GestureDetector(
                            child: ListTile(
                              onTap: () {
                                final playerId = player.id;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Profils(playerId: player),
                                  ),
                                );
                              },
                              title: Text("Nom : ${player.lastName}"),
                              subtitle: Text("Prenom : ${player.firstName}"),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
