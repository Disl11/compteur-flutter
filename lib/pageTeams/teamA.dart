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
                        return Card(
                          child: ListTile(
                            title: Text(
                              "Nom : ${playersTeamA[index]["lastName"]}",
                            ),
                            subtitle: Text(
                              "Prenom : ${playersTeamA[index]["firstName"]}",
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
