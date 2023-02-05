import 'package:flutter/material.dart';
import '../../../../models/chat_model.dart';
import '../../../../utils/back_btn.dart';
import 'chat_header.dart';
import 'chatbox_field.dart';
import 'message_box.dart';

class ConversationScreen extends StatelessWidget {
  final Chat chat;

  const ConversationScreen({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Image.asset('assets/images/pattern.png'),
          ),
          const BackButtonW(),
          const MessageBox(),
          const ChatBoxField(),
          ChatHeader(chat: chat),
        ],
      ),
    );
  }
}
