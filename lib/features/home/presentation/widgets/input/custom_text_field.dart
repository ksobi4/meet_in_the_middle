// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../../../core/get_it.dart';
import '../../../service/home_service.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final ValueChanged<String> onDataChange;
  const CustomTextField({
    Key? key,
    required this.label,
    required this.onDataChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TypeAheadField(
        noItemsFoundBuilder: (context) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('No items'),
        ),
        textFieldConfiguration: TextFieldConfiguration(
          controller: _controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: label,
          ),
        ),
        itemBuilder: (BuildContext context, itemData) {
          return Card(
              child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(itemData.toString()),
          ));
        },
        animationDuration: const Duration(milliseconds: 0),
        animationStart: 0,
        onSuggestionSelected: (Object? suggestion) {
          _controller.text = suggestion.toString();
          onDataChange(suggestion.toString());
        },
        suggestionsCallback: (String stringPart) async {
          log('wysylam zapytanie o $stringPart');
          HomeService homeService = sl.get<HomeService>();
          return (await homeService.getStations(stringPart));
        },
        getImmediateSuggestions: true,
      ),
    );
  }
}
