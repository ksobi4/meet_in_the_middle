import 'dart:convert';

class TrainDelay {
  String name;
  String trainNumber;
  String carrier;
  String date;

  String startStation;
  String endStation;

  String arrivalTime;
  String leavingTime;

  String arrivalDelay;
  String leavingDelay;

  TrainDelay({
    required this.name,
    required this.trainNumber,
    required this.carrier,
    required this.date,
    required this.startStation,
    required this.endStation,
    required this.arrivalTime,
    required this.leavingTime,
    required this.arrivalDelay,
    required this.leavingDelay,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'trainNumber': trainNumber,
      'carrier': carrier,
      'date': date,
      'startStation': startStation,
      'endStation': endStation,
      'arrivalTime': arrivalTime,
      'leavingTime': leavingTime,
      'arrivalDelay': arrivalDelay,
      'leavingDelay': leavingDelay,
    };
  }

  factory TrainDelay.fromMap(Map<String, dynamic> map) {
    return TrainDelay(
      name: map['name'] ?? '',
      trainNumber: map['trainNumber'] ?? '',
      carrier: map['carrier'] ?? '',
      date: map['date'] ?? '',
      startStation: map['startStation'] ?? '',
      endStation: map['endStation'] ?? '',
      arrivalTime: map['arrivalTime'] ?? '',
      leavingTime: map['leavingTime'] ?? '',
      arrivalDelay: map['arrivalDelay'] ?? '',
      leavingDelay: map['leavingDelay'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TrainDelay.fromJson(String source) =>
      TrainDelay.fromMap(json.decode(source));
}
