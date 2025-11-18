import 'package:flutter/material.dart';
import 'package:compteur/api/api.dart';

class TeamB extends StatefulWidget {
  TeamB({super.key});

  @override
  State<TeamB> createState() => _TeamAState();
}

class _TeamAState extends State<TeamB> {
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
                      itemCount: playersTeamB.length,
                      itemBuilder: (Context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                              "Nom : ${playersTeamB[index]["lastName"]}",
                            ),
                            subtitle: Text(
                              "Prenom : ${playersTeamB[index]["firstName"]}",
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
