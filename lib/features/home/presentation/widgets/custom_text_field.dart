import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../../../../core/get_it.dart';
import '../../service/home_service.dart';

class CustomTextField extends StatefulWidget {
  final ValueChanged<String> onDataChange;
  const CustomTextField({
    Key? key,
    required this.onDataChange,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TypeAheadField(
        noItemsFoundBuilder: (context) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('No items'),
        ),
        textFieldConfiguration: TextFieldConfiguration(
          controller: _controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        itemBuilder: (BuildContext context, itemData) {
          return Card(
              child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(itemData.toString()),
          ));
        },
        onSuggestionSelected: (Object? suggestion) {
          _controller.text = suggestion.toString();
          widget.onDataChange(suggestion.toString());
        },
        suggestionsCallback: (String stringPart) async {
          HomeService homeService = sl.get<HomeService>();
          return (await homeService.getStations(stringPart));
        },
      ),
    );
  }
}
