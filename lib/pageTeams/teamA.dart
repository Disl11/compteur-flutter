import 'package:flutter/material.dart';

class TeamA extends StatelessWidget {
  final List playersTeamA = [
    {"Name": "Ludovic", "LastName": "Kader"},
    {"Name": "Jordan", "LastName": "Michael"},
  ];
  TeamA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Players Team A")),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
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
                      title: Text("Nom : ${playersTeamA[index]["LastName"]}"),
                      subtitle: Text("Prenom : ${playersTeamA[index]["Name"]}"),
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
