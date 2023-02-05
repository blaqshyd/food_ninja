import 'package:flutter/material.dart';

import '../../../../constants/screens_dir.dart';
import '../../../../models/chat_model.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 90),
          sizedHeight40,
          Container(
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              boxShadow: boxShadow,
              color: lightScaffoldBgColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(chat.chatImage),
                        fit: BoxFit.contain,
                      ),
                    ),
                    width: 60,
                    height: 60,
                  ),
                  sizedWidth10,
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          chat.chatName,
                          style: mainTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: chat.onlineStatusColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              chat.onlineStatus,
                              style: mainTextStyle.copyWith(
                                fontSize: secondarySize,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/images/call_logo.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
