import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mitm4/core/router/router.gr.dart';

class StationTextField extends StatelessWidget {
  final String label;
  final ValueChanged<String> onDataChange;

  const StationTextField({
    Key? key,
    required this.label,
    required this.onDataChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        readOnly: true,
        controller: _controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        onTap: () async {
          print('tap');
          var result = await context.router
              .push(SelectStationPageRoute(initString: _controller.text));
          _controller.text = result.toString();
        },
      ),
    );
  }
}
