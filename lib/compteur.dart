import 'package:flutter/material.dart';

class Compteur extends StatefulWidget {
  Compteur({super.key});

  @override
  State<Compteur> createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  int scoreTeamA = 0;

  int scoreTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Mon compteur")),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            height: 520,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 520,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          child: Text(
                            "Team A",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(endIndent: 10, thickness: 3),
                        Container(
                          child: Text(
                            scoreTeamA.toString(),
                            style: TextStyle(
                              fontSize: 150,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              minimumSize: Size(150, 60),
                            ),
                            onPressed: () {
                              setState(() {
                                scoreTeamA += 1;
                              });
                              print("1 point team A");
                            },
                            child: Text("Add 1 point"),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              minimumSize: Size(150, 60),
                            ),
                            onPressed: () {
                              setState(() {
                                scoreTeamA += 2;
                              });
                              print("2 point team A");
                            },
                            child: Text("Add 2 point"),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              minimumSize: Size(150, 60),
                            ),
                            onPressed: () {
                              setState(() {
                                scoreTeamA += 3;
                              });
                              print("3 point team A");
                            },
                            child: Text("Add 3 point"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: Container(
                    height: 520,
                    width: 150,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          child: Text(
                            "Team B",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(indent: 10, thickness: 3),
                        Container(
                          child: Text(
                            scoreTeamB.toString(),
                            style: TextStyle(
                              fontSize: 150,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              minimumSize: Size(150, 60),
                            ),
                            onPressed: () {
                              setState(() {
                                scoreTeamB += 1;
                              });
                              print("1 point team B");
                            },
                            child: Text("Add 1 point"),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              minimumSize: Size(150, 60),
                            ),
                            onPressed: () {
                              setState(() {
                                scoreTeamB += 2;
                              });
                              print("2 point team B");
                            },
                            child: Text("Add 2 point"),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              minimumSize: Size(150, 60),
                            ),
                            onPressed: () {
                              setState(() {
                                scoreTeamB += 3;
                              });
                              print("3 point team B");
                            },
                            child: Text("Add 3 point"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  minimumSize: Size(200, 70),
                ),
                onPressed: () {
                  setState(() {
                    scoreTeamA = 0;
                    scoreTeamB = 0;
                  });
                  print("reset score");
                },
                child: Text("Reset"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
