import 'package:flutter/material.dart';

import '../../../../constants/screens_dir.dart';
import '../../../../models/messages_model.dart';
import 'messages.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 240,
      left: 0,
      right: 0,
      bottom: 90,
      child: Padding(
        padding: defaultPadding,
        child: ListView(
          children: List.generate(
            convo.length,
            (index) {
              return Messages(
                message: convo[index]['message'],
                timestamp: convo[index]['timestamp'],
                isMe: convo[index]['isMe'],
              );
            },
          ),
        ),
      ),
    );
  }
}
