class Players {
  final int id;
  final String firstName;
  final String lastName;
  final int age;
  final String image;
  final double height;

  Players({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.image,
    required this.height,
  });

  factory Players.fromJson(Map<String, dynamic> json) {
    return Players(
      id: json["id"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      age: json["age"],
      image: json["image"],
      height: json["height"],
    );
  }
}
