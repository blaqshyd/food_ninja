// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/screens_dir.dart';
import 'package:food_ninja/utils/back_btn.dart';

import '../../../models/chat_model.dart';
import 'components/chat_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Image.asset('assets/images/pattern1.png'),
        ),
        BackButtonW(
          onTap: () => Navigator.pushNamed(context, homeRoute),
        ),
        Padding(
          padding: defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90),
              sizedHeight40,
              Text(
                'Chat',
                style: mainTextStyle,
              ),
              sizedHeight20,
              Expanded(
                child: ListView.builder(
                  itemCount: chat.length,
                  itemBuilder: (context, index) => ChatBox(
                    chatbox: chat[index],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
