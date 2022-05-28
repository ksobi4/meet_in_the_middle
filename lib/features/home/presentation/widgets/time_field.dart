import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class TimeField extends StatefulWidget {
  final ValueChanged<String> onDataChange;
  const TimeField({
    Key? key,
    required this.onDataChange,
  }) : super(key: key);

  @override
  State<TimeField> createState() => _TimeFieldState();
}

class _TimeFieldState extends State<TimeField> {
  final TextEditingController _controller = TextEditingController();
  String? minute;
  String? hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(), labelText: 'Godzina'),
        controller: _controller,
        readOnly: true,
        onTap: _onTap,
      ),
    );
  }

  void _onTap() async {
    DateTime currTime = DateTime.now();

    // if (minute != null) {
    //   currTime.
    // }

    DatePicker.showTimePicker(context,
        currentTime: currTime, locale: LocaleType.pl, onConfirm: (date) {
      minute = date.minute.toString();
      hour = date.hour.toString();

      String str = '${date.hour}:${date.minute}';
      _controller.text = str;
      widget.onDataChange(str);
    },
        theme: const DatePickerTheme(backgroundColor: Colors.white60),
        showSecondsColumn: false);
  }
}
