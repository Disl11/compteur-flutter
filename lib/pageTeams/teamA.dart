import 'package:flutter/material.dart';

class TeamA extends StatefulWidget {
  final List joueursTeamA = [
    {"Name": "Ludovic", "LastName": "Kader"},
  ];
  TeamA({super.key});

  @override
  State<TeamA> createState() => _TeamAState();
}

class _TeamAState extends State<TeamA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Team A")),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
