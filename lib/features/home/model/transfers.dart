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
  List<Ride> trains;
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
      trains: List<Ride>.from(map['trains']?.map((x) => Ride.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Transfer.fromJson(String source) =>
      Transfer.fromMap(json.decode(source));
}

@JsonSerializable(explicitToJson: true)
class Ride {
  String distance;
  String startStation;
  String endStation;
  String startTime;
  String endTime;
  String carrier;
  String name;
  String number;

  Ride({
    this.distance = '',
    this.startStation = '',
    this.endStation = '',
    this.startTime = '',
    this.endTime = '',
    this.carrier = '',
    this.name = '',
    this.number = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'distance': distance,
      'startStation': startStation,
      'endStation': endStation,
      'startTime': startTime,
      'endTime': endTime,
      'carrier': carrier,
      'name': name,
      'number': number,
    };
  }

  factory Ride.fromMap(Map<String, dynamic> map) {
    return Ride(
      distance: map['distance'] ?? '',
      startStation: map['startStation'] ?? '',
      endStation: map['endStation'] ?? '',
      startTime: map['startTime'] ?? '',
      endTime: map['endTime'] ?? '',
      carrier: map['carrier'] ?? '',
      name: map['name'] ?? '',
      number: map['number'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Ride.fromJson(String source) => Ride.fromMap(json.decode(source));
}
