import 'package:compteur/viewModel/teamViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:compteur/view/profil.dart';

class Mercato extends StatefulWidget {
  const Mercato({super.key});

  @override
  State<Mercato> createState() => _MercatoState();
}

class _MercatoState extends State<Mercato> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TeamViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Mercato")),
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
                      itemCount: viewModel.mercato.length,
                      itemBuilder: (Context, index) {
                        final player = viewModel.mercato[index];
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
    );
  }
}
