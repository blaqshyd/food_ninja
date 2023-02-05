import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';

class Chat {
  String chatImage, chatName, timestamp, chatNotification, onlineStatus;
  Color onlineStatusColor;

  Chat({
    required this.chatImage,
    required this.chatName,
    required this.timestamp,
    required this.chatNotification,
    required this.onlineStatus,
    required this.onlineStatusColor,
  });
  // static Chat fromJson(json) => Chat(
  //       chatImage: json['chatImage'],
  //       chatName: json['chatName'],
  //       timestamp: json['timestamp'],
  //     );

}

final List<Chat> chat = [
  Chat(
    chatImage: 'assets/images/profile1.png',
    chatName: 'Daniel Russell',
    timestamp: '04:45 PM',
    chatNotification: 'Your order is processing.',
    onlineStatus: 'Online',
    onlineStatusColor: primaryColor,
  ),
  Chat(
    chatImage: 'assets/images/profile2.png',
    chatName: 'John Doe',
    timestamp: '12:12 PM',
    chatNotification: 'Your order just arrived.',
    onlineStatus: 'Offline',
    onlineStatusColor: lightSecondaryColor,
  ),
  Chat(
    chatImage: 'assets/images/profile3.png',
    chatName: 'Leslie Alexandar',
    timestamp: '09:25 AM',
    chatNotification: 'Your order has been delivered.',
    onlineStatus: 'Away',
    onlineStatusColor: backButtonBgColor.withOpacity(0.7),
  ),
  Chat(
    chatImage: 'assets/images/profile1.png',
    chatName: 'Young Sheldon',
    timestamp: '09:25 PM',
    chatNotification: 'Your order is on it\'s way.',
    onlineStatus: 'Away',
    onlineStatusColor: backButtonBgColor.withOpacity(0.7),
  ),
];
