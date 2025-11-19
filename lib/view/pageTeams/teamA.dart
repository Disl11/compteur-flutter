import 'package:compteur/view/profils/profil.dart';
import 'package:flutter/material.dart';
import 'package:compteur/api/api.dart';

class TeamA extends StatefulWidget {
  TeamA({super.key});

  @override
  State<TeamA> createState() => _TeamAState();
}

class _TeamAState extends State<TeamA> {
  List playersTeamA = [];
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
      playersTeamA = players.take(10).toList();
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Players Team A")),
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
                      itemCount: playersTeamA.length,
                      itemBuilder: (Context, index) {
                        final player = playersTeamA[index];
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
                                print("click profil ${player.id}");
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.orangeAccent,
        tooltip: 'Retour',
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
