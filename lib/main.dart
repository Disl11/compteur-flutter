import 'package:compteur/view/compteur.dart';
import 'package:compteur/view/mercato.dart';
import 'package:compteur/view/teamA.dart';
import 'package:compteur/view/teamB.dart';
import 'package:compteur/view/profil.dart';
import 'package:compteur/viewModel/compteurViewModel.dart';
import 'package:compteur/viewModel/teamAViewModel.dart';
import 'package:compteur/viewModel/teamBViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TeamAViewModel()..loadUserA(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (_) => TeamBViewModel()..loadUserB(),
          lazy: true,
        ),
        ChangeNotifierProvider(create: (_) => CompteurViewModel()),
      ],
      child: MaterialApp(
        routes: {
          '/TeamA': (BuildContext context) => TeamA(),
          '/TeamB': (BuildContext context) => TeamB(),
          '/Mercato': (BuildContext context) => Mercato(),
        },

        title: 'Compteur',
        home: Compteur(),
      ),
    );
  }
}
