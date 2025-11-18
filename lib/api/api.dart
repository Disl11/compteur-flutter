import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:compteur/models/players.dart';
import 'dart:convert';

class PlayersRepo {
  static Future<List<Players>> getPlayers() async {
    try {
      final res = await http.get(Uri.parse('https://dummyjson.com/users'));
      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);
        final List userJson = data['users'];
        return userJson.map((json) => Players.fromJson(json)).toList();
      } else {
        throw Exception("erreur serveur user");
      }
    } catch (e) {
      throw Exception("erreur serveur");
    }
  }
}
