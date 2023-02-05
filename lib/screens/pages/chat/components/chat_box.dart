import 'package:flutter/material.dart';

import '../../../../constants/screens_dir.dart';
import '../../../../models/chat_model.dart';

import 'convo_screen.dart';

class ChatBox extends StatelessWidget {
  final Chat chatbox;

  const ChatBox({
    required this.chatbox,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: lightSecondaryColor,
              blurRadius: 10.0,
              offset: const Offset(0, 5),
            ),
            BoxShadow(
              color: lightSecondaryColor,
              blurRadius: 10.0,
              offset: const Offset(-5, 0),
            ),
          ],
          color: lightScaffoldBgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          minVerticalPadding: 18,
          horizontalTitleGap: 12,
          isThreeLine: true,
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ConversationScreen(
                  chat: chatbox,
                ),
              )),
          leading: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(chatbox.chatImage),
                fit: BoxFit.contain,
              ),
            ),
            width: 60,
            height: 60,
          ),
          title: Text(
            chatbox.chatName,
            style: mainTextStyle.copyWith(
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            chatbox.chatNotification,
            style: mainTextStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.w500),
          ),
          trailing: Text(
            chatbox.timestamp,
            style: mainTextStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
