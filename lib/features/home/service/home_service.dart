// ignore_for_file: void_checks

import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:mitm4/core/errors/failure.dart';
import 'package:uuid/uuid.dart';

import '../../../core/config/config.dart';
import '../../../core/http_client.dart';
import '../model/train_event.dart';
import '../model/transfers.dart';
import '../model/user.dart';

class HomeService {
  HttpClient client;
  HomeService({
    required this.client,
  });

  final db = FirebaseDatabase.instance;

  Future<List<String>> getStations(String stringPart) async {
    try {
      Response res = await client.dio.get('$getStationUrl$stringPart');
      if (res.statusCode == 200) {
        List<String> list = [];

        var data1 = res.data;
        for (var el in data1) {
          list.add(el['Nazwa'].toString());
        }

        return list;
      } else {
        return ['wystąpił błąd podczas pobierania stacji'];
      }
    } catch (e) {
      log('Home service getStations error: ${e.toString()}');
      return [];
    }
  }

  Future<Either<Failure, Transfers>> getTransfers(
      String startStation, String endStataion, String date, String time) async {
    try {
      String url =
          '$baseUrl/${_rebuildStaiton(startStation)}/${_rebuildStaiton(endStataion)}/$date/$time';
      log('link = $url');
      Response res =
          await client.dio.get(url, options: Options(receiveTimeout: 15000));
      var string = jsonEncode(res.data['data']);
      return Right(Transfers.fromJson(string));
    } catch (e) {
      log('HOME SERVICE getTransfers ${e.toString()}');
      return Left(Failure('HOME SERVICE getTransfers ${e.toString()}'));
    }
  }

  Future<Either<Failure, List<User>>> getTrainMembers(Train train) async {
    try {
      DataSnapshot snap = await db
          .ref('trains')
          .orderByChild('trainNumber')
          .equalTo(train.trainNumber)
          .get();
      if (snap.exists) {
        log('ISTNIEJE');
        Map<String, dynamic> train = jsonDecode(jsonEncode(snap.value));
        var key = snap.children.first.key.toString();
        Train train2 = Train.fromJson(jsonEncode(train[key]));

        List<User> userList = [];

        for (String userId in train2.members) {
          // log('userID = $userId');
          User? user = await _getUser(userId);
          if (user != null) userList.add(user);
        }
        return Right(userList);
      } else {
        log('NIE ISTNIEJE');
        String uuid = const Uuid().v4();
        db.ref('trains/$uuid').set(jsonDecode(train.toJson()));
        db.ref('trains/$uuid/members').set(['null']);
        return const Right([]);
      }
    } catch (e) {
      return Left(Failure('HOME SERVICE getTrainMembers ${e.toString()}'));
    }
  }

  Future<Either<Failure, List<TrainEvent>>> getTrainEvents(Train train) async {
    try {
      DataSnapshot trainSnap = await db
          .ref('trains')
          .orderByChild('trainNumber')
          .equalTo(train.trainNumber)
          .get();
      if (trainSnap.exists) {
        Map<String, dynamic> jsonTrain =
            jsonDecode(jsonEncode(trainSnap.value));
        var key = trainSnap.children.first.key.toString();
        Train train = Train.fromJson(jsonEncode(jsonTrain[key]));

        List<TrainEvent> eventsList = [];

        for (String eventId in train.events) {
          DataSnapshot eventSnap = await db.ref('events/$eventId').get();
          if (eventSnap.exists && eventId != 'null') {
            Map<String, dynamic> eventJson =
                jsonDecode(jsonEncode(eventSnap.value));

            List membersList = [];
            for (String? userId in eventJson["members"]) {
              if (userId != "null" && userId != null) {
                User? user = await _getUser(userId);
                if (user != null) {
                  membersList.add(user.toMap());
                }
              }
            }
            eventJson["members"] = membersList;

            String authorUserId = eventJson["author"];
            User? authorUser = await _getUser(authorUserId);
            if (authorUser != null) {
              eventJson["author"] = jsonDecode(authorUser.toJson());
            }
            TrainEvent event = TrainEvent.fromJson(jsonEncode(eventJson));
            eventsList.add(event);
          }
        }

        return Right(eventsList);
      } else {
        return const Right([]);
      }
    } catch (e) {
      log('HOME SERVICE getTrainEvents $e');
      return Left(Failure('HOME SERVICE getTrainEvents $e'));
    }
  }

  Future<Either<Failure, bool>> joinTrain(String userId, Train train) async {
    try {
      DataSnapshot snap = await db
          .ref('trains')
          .orderByChild('trainNumber')
          .equalTo(train.trainNumber)
          .get();
      var key = snap.children.first.key.toString();
      // log('key =$key');
      DatabaseReference temp = db.ref('trains/$key').child('members');
      var tempData = jsonDecode(jsonEncode((await temp.get()).value));
      tempData.add(userId);
      // log('tempkey = ${tempData}');
      await db.ref('trains/$key/members').set(tempData);

      return const Right(true);
    } catch (e) {
      log('HOME SERVICE joinTrain $e');
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, bool>> isUserInTrain(
      String userId, Train train) async {
    try {
      DataSnapshot snap = await db
          .ref('trains')
          .orderByChild('trainNumber')
          .equalTo(train.trainNumber)
          .get();
      var key = snap.children.first.key.toString();
      DatabaseReference temp = db.ref('trains/$key').child('members');
      var memberIdList = jsonDecode(jsonEncode((await temp.get()).value));
      bool check = true;
      for (String id in memberIdList) {
        if (id == userId) check = false;
      }
      if (check) {
        return const Right(false);
      } else {
        return const Right(true);
      }
    } catch (e) {
      log('HOME SERVICE isUserInTrain $e');
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, void>> leaveTrain(String userId, Train train) async {
    try {
      DataSnapshot snap = await db
          .ref('trains')
          .orderByChild('trainNumber')
          .equalTo(train.trainNumber)
          .get();
      var key = snap.children.first.key.toString();
      log('key =$key');
      DatabaseReference temp = db.ref('trains/$key').child('members');
      List<dynamic> memberIdList =
          jsonDecode(jsonEncode((await temp.get()).value));
      bool check = false;
      for (String id in memberIdList) {
        if (id == userId) check = true;
      }
      if (check) {
        memberIdList.remove(userId);
        await db.ref('trains/$key/members').set(memberIdList);
        return const Right(true);
      } else {
        return const Right(false);
      }
    } catch (e) {
      log('HOME SERVICE leaveTrain $e');
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, bool>> createEvent(
      String userId,
      Train train,
      String eventTitle,
      String eventDesc,
      String carriage,
      String place,
      String eventType) async {
    try {
      String eventUUID = const Uuid().v4();
      String trainKey = await _getTrainKey(train);

      DatabaseReference temp = db.ref('trains/$trainKey').child('events');
      var eventList = jsonDecode(jsonEncode((await temp.get()).value));
      eventList.add(eventUUID);
      await db.ref('trains/$trainKey/events').set(eventList);

      var userJson =
          jsonDecode(jsonEncode((await db.ref('users/$userId').get()).value));
      User? user = await _getUser(userId);
      if (user == null) {
        throw 'no user';
      }

      db.ref('events/$eventUUID').set({
        "id": eventUUID,
        "author": userId,
        "carriage": carriage,
        "description": eventDesc,
        "eventType": eventType,
        "members": ['null'],
        "seat": place,
        "trainId": trainKey,
        "title": eventTitle,
      });

      return Right(true);
    } catch (e) {
      log('HOME SERVICE createEvent $e');
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, bool>> deleteEvent(
      String userId, TrainEvent event) async {
    try {
      String trainId = event.trainId;

      DatabaseReference temp = db.ref('trains/$trainId').child('events');
      var eventList = jsonDecode(jsonEncode((await temp.get()).value));
      eventList.remove(event.id);
      await db.ref('trains/$trainId/events').set(eventList);

      await db.ref('events/${event.id}').remove();

      return Right(true);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<String> _getTrainKey(Train train) async {
    DataSnapshot snap = await db
        .ref('trains')
        .orderByChild('trainNumber')
        .equalTo(train.trainNumber)
        .get();
    if (snap.exists) {
      Map<String, dynamic> train = jsonDecode(jsonEncode(snap.value));
      String key = snap.children.first.key.toString();
      return key;
    } else {
      return 'null';
    }
  }

  Future<User?> _getUser(String userId) async {
    DataSnapshot snapUser = await db.ref('users/$userId').get();

    if (snapUser.exists && userId != 'null') {
      Map<String, dynamic> userJson = jsonDecode(jsonEncode(snapUser.value));

      return User.fromJson(jsonEncode(userJson));
    } else {
      return null;
    }
  }
}

String _rebuildStaiton(String station) {
  station = station.replaceAll(r' ', '-');
  station = station.replaceAll(r'ł', 'l');
  station = station.replaceAll(r'ó', 'o');
  log('station = $station');
  return station;
}
