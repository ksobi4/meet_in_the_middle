// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mitm4/features/home/service/home_service.dart';

import '../../../core/get_it.dart';
import '../model/transfers.dart';

class AddEventPage extends StatefulWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController carriageController = TextEditingController();
  TextEditingController seatController = TextEditingController();
  String currValue = dropDownListItem[0];
  Train train;

  AddEventPage({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return const Text('aa');
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Utwórz event')),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              MyTextField(
                label: 'Tytuł',
                controller: widget.titleController,
                minLinesVar: 1,
                maxLinesVar: 1,
                isNumeric: false,
              ),
              MyTextField(
                label: 'Opis',
                controller: widget.descController,
                minLinesVar: 3,
                maxLinesVar: 5,
                isNumeric: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyTextField(
                    label: 'Wagon',
                    controller: widget.carriageController,
                    width: 100,
                    minLinesVar: 1,
                    maxLinesVar: 1,
                    isNumeric: true,
                  ),
                  MyTextField(
                    label: 'Miejsce',
                    controller: widget.seatController,
                    width: 100,
                    minLinesVar: 1,
                    maxLinesVar: 1,
                    isNumeric: true,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                    child: DropdownButton<String>(
                      value: widget.currValue,
                      items: dropDownListItem
                          .map<DropdownMenuItem<String>>((itemValue) {
                        return DropdownMenuItem(
                          value: itemValue,
                          child: Text(itemValue),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        log('changed $newValue');
                        setState(() {
                          widget.currValue = newValue ?? '';
                        });
                      },
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: _addEvent, child: const Text('Dodaj Event')),
            ],
          ),
        ),
      ),
    );
  }

  void _addEvent() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      log('doadj event press');
      await sl<HomeService>().createEvent(
          user.uid,
          widget.train,
          widget.titleController.text,
          widget.descController.text,
          widget.carriageController.text,
          widget.seatController.text,
          widget.currValue);
      context.router.pop(user);
    }
  }
}

List dropDownListItem = [
  "Karty",
  "Szachy",
  "Rozmowa",
  "Impreza",
  "Inne (opis)",
];

class MyTextField extends StatelessWidget {
  String label;
  TextEditingController controller;
  int width;
  int minLinesVar;
  int maxLinesVar;
  bool isNumeric;
  MyTextField({
    Key? key,
    required this.label,
    required this.controller,
    required this.minLinesVar,
    required this.maxLinesVar,
    required this.isNumeric,
    this.width = -1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: SizedBox(
        width: width == -1 ? null : width.toDouble(),
        child: TextField(
          controller: controller,
          keyboardType:
              isNumeric ? TextInputType.number : TextInputType.multiline,
          minLines: minLinesVar,
          maxLines: maxLinesVar,
          decoration: InputDecoration(
            labelText: label,
            border: const OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
