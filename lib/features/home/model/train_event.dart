import 'dart:convert';

import 'user.dart';

class TrainEvent {
  User author;
  String title;
  String description;
  List<User> members;
  String eventType;
  TrainEvent({
    required this.author,
    required this.title,
    required this.description,
    required this.eventType,
    required this.members,
  });

  Map<String, dynamic> toMap() {
    return {
      'author': author.toMap(),
      'eventType': eventType,
      'title': title,
      'description': description,
      'members': members.map((x) => x.toMap()).toList(),
    };
  }

  factory TrainEvent.fromMap(Map<String, dynamic> map) {
    return TrainEvent(
      author: User.fromMap(map['author']),
      eventType: map['eventType'],
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      members: List<User>.from(map['members']?.map((x) => User.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory TrainEvent.fromJson(String source) =>
      TrainEvent.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TrainEvent(author: $author, eventType: $eventType, title: $title, description: $description, members: $members)';
  }
}
