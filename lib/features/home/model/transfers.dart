import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(explicitToJson: true)
class Transfers {
  List<Transfer> transfers;
  Transfers({
    required this.transfers,
  });

  Map<String, dynamic> toMap() {
    return {
      'transfers': transfers.map((x) => x.toMap()).toList(),
    };
  }

  factory Transfers.fromMap(Map<String, dynamic> map) {
    return Transfers(
      transfers: List<Transfer>.from(
          map['transfers']?.map((x) => Transfer.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Transfers.fromJson(String source) =>
      Transfers.fromMap(json.decode(source));
}

@JsonSerializable(explicitToJson: true)
class Transfer {
  List<Train> trains;
  Transfer({
    required this.trains,
  });

  Map<String, dynamic> toMap() {
    return {
      'trains': trains.map((x) => x.toMap()).toList(),
    };
  }

  factory Transfer.fromMap(Map<String, dynamic> map) {
    return Transfer(
      trains: List<Train>.from(map['trains']?.map((x) => Train.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Transfer.fromJson(String source) =>
      Transfer.fromMap(json.decode(source));
}

@JsonSerializable(explicitToJson: true)
class Train {
  String distance;
  String startStation;
  String endStation;
  String startTime;
  String endTime;
  String carrier;
  String name;
  String trainNumber;
  String date;
  List members;
  List events;

  Train({
    this.distance = '',
    this.startStation = '',
    this.endStation = '',
    this.startTime = '',
    this.endTime = '',
    this.carrier = '',
    this.name = '',
    this.trainNumber = '',
    this.date = '',
    this.members = const [],
    this.events = const [],
  });

  set setMember(List<String> members) {
    this.members = members;
  }

  Map<String, dynamic> toMap() {
    return {
      'distance': distance,
      'startStation': startStation,
      'endStation': endStation,
      'startTime': startTime,
      'endTime': endTime,
      'carrier': carrier,
      'name': name,
      'trainNumber': trainNumber,
      'date': date,
      'members': members,
      'events': events,
    };
  }

  factory Train.fromMap(Map<String, dynamic> map) {
    return Train(
      distance: map['distance'] ?? '',
      startStation: map['startStation'] ?? '',
      endStation: map['endStation'] ?? '',
      startTime: map['startTime'] ?? '',
      endTime: map['endTime'] ?? '',
      carrier: map['carrier'] ?? '',
      name: map['name'] ?? '',
      trainNumber: map['trainNumber'] ?? '',
      date: map['date'] ?? '',
      members: map['members'] ?? [],
      events: map['events'] ?? [],
    );
  }

  //members: map['members'] ?? [],
  // events: map['events'] ?? [],

  String toJson() => json.encode(toMap());

  factory Train.fromJson(String source) => Train.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Train(distance: $distance, startStation: $startStation, endStation: $endStation, startTime: $startTime, endTime: $endTime, carrier: $carrier, name: $name, trainNumber: $trainNumber, date: $date, members: $members, events: $events)';
  }
}
