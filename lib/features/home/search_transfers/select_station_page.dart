import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/get_it.dart';
import '../service/home_service.dart';

class SelectStationPage extends StatefulWidget {
  final String initString;
  List<String> outputList = [];

  SelectStationPage({
    Key? key,
    required this.initString,
  }) : super(key: key);

  @override
  State<SelectStationPage> createState() => _SelectStationPageState();
}

class _SelectStationPageState extends State<SelectStationPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    _controller.text = widget.initString;
    if (widget.initString != '') _onChanged('widget.initString');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: _onChanged,
                controller: _controller,
                autofocus: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.outputList.length,
                itemBuilder: (context, index) {
                  String str = widget.outputList[index].toString();
                  return GestureDetector(
                    onTap: () {
                      context.router.pop(str);
                    },
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(str),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChanged(String stringPart) async {
    HomeService homeService = sl.get<HomeService>();
    List<String> list = await homeService.getStations(stringPart);

    setState(() {
      widget.outputList = list;
    });
  }
}
