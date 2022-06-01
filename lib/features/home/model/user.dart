import 'dart:convert';

class User {
  String uuid;
  String name;
  String lastName;
  String avatarUrl;
  String lastMessTime;
  User({
    required this.uuid,
    required this.name,
    required this.lastName,
    required this.avatarUrl,
    required this.lastMessTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'name': name,
      'lastName': lastName,
      'avatarUrl': avatarUrl,
      'lastMessTime': lastMessTime,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uuid: map['uuid'] ?? '',
      name: map['name'] ?? '',
      lastName: map['lastName'] ?? '',
      avatarUrl: map['avatarUrl'] ?? '',
      lastMessTime: map['lastMessTime'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
