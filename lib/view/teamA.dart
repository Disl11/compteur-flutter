import 'package:compteur/view/profil.dart';
import 'package:compteur/viewModel/teamViewModel.dart';
import 'package:flutter/material.dart';
import 'package:compteur/api/api.dart';
import 'package:provider/provider.dart';

class TeamA extends StatefulWidget {
  TeamA({super.key});

  @override
  State<TeamA> createState() => _TeamAState();
}

class _TeamAState extends State<TeamA> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TeamViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Players Team A")),
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
                      itemCount: viewModel.playersTeamA.length,
                      itemBuilder: (Context, index) {
                        final player = viewModel.playersTeamA[index];
                        return Card(
                          child: GestureDetector(
                            child: ListTile(
                              trailing: IconButton(
                                onPressed: () {
                                  viewModel.remouvePlayer(index, 'A');
                                  print("delete player ${player.id}");
                                },
                                icon: Icon(Icons.close),
                              ),
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
