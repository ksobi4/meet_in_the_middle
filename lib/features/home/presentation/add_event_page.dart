import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mitm4/features/home/service/home_service.dart';

import '../../../core/get_it.dart';
import '../model/transfers.dart';

class AddEventPage extends StatefulWidget {
  TextEditingController titleController =
      TextEditingController(text: 'event title1');
  TextEditingController descController =
      TextEditingController(text: 'event desc1');
  TextEditingController carriageController =
      TextEditingController(text: 'event carraige 1');
  TextEditingController seatController =
      TextEditingController(text: 'event seat 1');
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
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              MyTextField(
                label: 'Tytuł',
                controller: widget.titleController,
              ),
              MyTextField(
                label: 'Opis',
                controller: widget.descController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyTextField(
                    label: 'Wagon',
                    controller: widget.carriageController,
                    width: 100,
                  ),
                  MyTextField(
                    label: 'Miejsce',
                    controller: widget.seatController,
                    width: 100,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: DropdownButton<String>(
                      value: widget.currValue,
                      items: dropDownListItem
                          .map<DropdownMenuItem<String>>((itemValue) {
                        return DropdownMenuItem(
                          child: Text(itemValue),
                          value: itemValue,
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
      sl<HomeService>().createEvent(
          user.uid,
          widget.train,
          widget.titleController.text,
          widget.descController.text,
          widget.carriageController.text,
          widget.seatController.text,
          widget.currValue);
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
  MyTextField({
    Key? key,
    required this.label,
    required this.controller,
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
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            labelText: label,
            border: const OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
