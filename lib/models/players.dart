class Players {
  final int id;
  final String firstName;
  final String lastName;
  final int age;

  Players({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  factory Players.fromJson(Map<String, dynamic> json) {
    return Players(
      id: json["id"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      age: json["age"],
    );
  }
}
