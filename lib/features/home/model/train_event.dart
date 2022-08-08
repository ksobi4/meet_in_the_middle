import 'dart:convert';

import 'package:mitm4/core/models/user.dart';

// import 'user.dart';

class TrainEvent {
  User author;
  String title;
  String description;
  List<User> members;
  String eventType;
  String carriage;
  String seat;
  String id;
  String trainId;
  TrainEvent({
    required this.author,
    required this.title,
    required this.description,
    required this.members,
    required this.eventType,
    required this.carriage,
    required this.seat,
    required this.id,
    required this.trainId,
  });

  Map<String, dynamic> toMap() {
    return {
      'author': author.toMap(),
      'title': title,
      'description': description,
      'members': members.map((x) => x.toMap()).toList(),
      'eventType': eventType,
      'carriage': carriage,
      'seat': seat,
      'id': id,
      'trainId': trainId,
    };
  }

  factory TrainEvent.fromMap(Map<String, dynamic> map) {
    return TrainEvent(
      author: User.fromMap(map['author']),
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      members: List<User>.from(map['members']?.map((x) => User.fromMap(x))),
      eventType: map['eventType'] ?? '',
      carriage: map['carriage'] ?? '',
      seat: map['seat'] ?? '',
      id: map['id'] ?? '',
      trainId: map['trainId'] ?? '',
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
