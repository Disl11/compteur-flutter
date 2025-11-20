import 'package:compteur/viewModel/compteurViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:compteur/view/navigation.dart';

class Compteur extends StatefulWidget {
  Compteur({super.key});

  @override
  State<Compteur> createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<CompteurViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Mon compteur")),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.amberAccent,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text("Menu", style: TextStyle(fontSize: 35)),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Team A"),
                onTap: () {
                  Navigator.pushNamed(context, '/TeamA');
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Team B"),
                onTap: () {
                  Navigator.pushNamed(context, '/TeamB');
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Mercato"),
                onTap: () {
                  Navigator.pushNamed(context, '/Mercato');
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 510,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 510,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/TeamA');
                            print("click Team A");
                          },
                          child: Container(
                            child: Text(
                              "Team A",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        Divider(endIndent: 10, thickness: 3),
                        Container(
                          child: Text(
                            modelView.scoreTeamA.toString(),
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
                              modelView.addPointTeamA(1);
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
                              modelView.addPointTeamA(2);
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
                              modelView.addPointTeamA(3);
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/TeamB');
                            print("Click Team B");
                          },
                          child: Container(
                            child: Text(
                              "Team B",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Divider(indent: 10, thickness: 3),
                        Container(
                          child: Text(
                            modelView.scoreTeamB.toString(),
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
                              modelView.addPointTeamB(1);
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
                              modelView.addPointTeamB(2);
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
                              modelView.addPointTeamB(3);
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
            height: 100,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  minimumSize: Size(200, 70),
                ),
                onPressed: () {
                  modelView.resetPoint();
                  print("reset score");
                },
                child: Text("Reset"),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarDubas(),
    );
  }
}
