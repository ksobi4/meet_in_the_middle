import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitm4/features/chat/presentation/widgets/icon_buttons.dart';

import '../../../core/theme.dart';
import '../model/message_data.dart';
import 'widgets/glowing_action_button.dart';

class ChatScreen extends StatelessWidget {
  static Route route(MessageData data) => MaterialPageRoute(
        builder: (context) => ChatScreen(
          messageData: data,
        ),
      );

  const ChatScreen({
    Key? key,
    required this.messageData,
  }) : super(key: key);

  final MessageData messageData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 54,
        title: const _AppBarTitle(),
        leading: Align(
          alignment: Alignment.centerRight,
          child: IconBackground(
            icon: CupertinoIcons.back,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.red),
              child: null,
            ),
          ),
          const _ActionBar(),
        ],
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Micheal Natro');
  }
}

class _ActionBar extends StatefulWidget {
  const _ActionBar({Key? key}) : super(key: key);

  @override
  __ActionBarState createState() => __ActionBarState();
}

class __ActionBarState extends State<_ActionBar> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TextField(
                controller: controller,
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  hintText: 'Type something...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 24.0,
              bottom: 10,
              top: 10,
            ),
            child: GlowingActionButton(
                color: AppColors.accent,
                icon: Icons.send_rounded,
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
