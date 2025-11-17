import 'package:flutter/material.dart';

class Compteur extends StatelessWidget {
  const Compteur({super.key});

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
                        Container(
                          child: Text(
                            "0",
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
                              print("3 point team A");
                            },
                            child: Text("Add 3 point"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                        Container(
                          child: Text(
                            "0",
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
                              print("3 point team B");
                            },
                            child: Text("Add 3 point"),
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
