import 'package:compteur/viewModel/teamBViewModel.dart';
import 'package:flutter/material.dart';
import 'package:compteur/api/api.dart';
import 'package:compteur/view/profil.dart';
import 'package:provider/provider.dart';

class TeamB extends StatefulWidget {
  const TeamB({super.key});

  @override
  State<TeamB> createState() => _TeamBState();
}

class _TeamBState extends State<TeamB> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TeamBViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Players Team B")),
        backgroundColor: Colors.orangeAccent,
      ),
      body: viewModel.isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 672,
                    width: 250,
                    child: ListView.builder(
                      itemCount: viewModel.playersTeamB.length,
                      itemBuilder: (Context, index) {
                        final player = viewModel.playersTeamB[index];
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
