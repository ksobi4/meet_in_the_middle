import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DateField extends StatefulWidget {
  final ValueChanged<String> onDataChange;
  const DateField({
    Key? key,
    required this.onDataChange,
  }) : super(key: key);

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(), labelText: 'Data'),
        controller: _controller,
        readOnly: true,
        onTap: _onTap,
      ),
    );
  }

  void _onTap() {
    DateTime date = DateTime.now();
    DateTime future = date.add(const Duration(days: 30));

    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(date.year, date.month, date.day),
        maxTime: DateTime(future.year, future.month, future.day),
        onConfirm: (date) {
      String str = '${date.day}.${date.month}.${date.year}';

      _controller.text = str;
      widget.onDataChange(str);
    },
        currentTime: DateTime.now(),
        locale: LocaleType.pl,
        theme: const DatePickerTheme(backgroundColor: Colors.white60));
  }
}
