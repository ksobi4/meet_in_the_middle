import 'dart:convert';

class TrainDelay {
  String leaveHour;
  String delayTime;
  String startStation;
  String endStation;
  String trainNumber;
  String name;
  String carrier;

  TrainDelay({
    required this.leaveHour,
    required this.delayTime,
    required this.startStation,
    required this.endStation,
    required this.trainNumber,
    required this.name,
    required this.carrier,
  });

  Map<String, dynamic> toMap() {
    return {
      'leaveHour': leaveHour,
      'delayTime': delayTime,
      'startStation': startStation,
      'endStation': endStation,
      'trainNumber': trainNumber,
      'name': name,
      'carrier': carrier,
    };
  }

  factory TrainDelay.fromMap(Map<String, dynamic> map) {
    return TrainDelay(
      leaveHour: map['leaveHour'] ?? '',
      delayTime: map['delayTime'] ?? '',
      startStation: map['startStation'] ?? '',
      endStation: map['endStation'] ?? '',
      trainNumber: map['trainNumber'] ?? '',
      name: map['name'] ?? '',
      carrier: map['carrier'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TrainDelay.fromJson(String source) =>
      TrainDelay.fromMap(json.decode(source));
}
