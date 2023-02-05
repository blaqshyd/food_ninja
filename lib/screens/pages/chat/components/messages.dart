import 'package:flutter/material.dart';

import '../../../../constants/screens_dir.dart';

class Messages extends StatelessWidget {
  final String message, timestamp;
  final bool isMe;
  const Messages({
    required this.message,
    required this.timestamp,
    required this.isMe,
    // required this.convo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isMe
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: backButtonBgColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            message,
                            style: mainTextStyle.copyWith(
                              fontSize: secondarySize,
                            ),
                          ),
                        ),
                      ),
                      sizedHeight02,
                      Text(
                        timestamp,
                        style: mainTextStyle.copyWith(
                          fontSize: miniSize,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: lightSecondaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          message,
                          style: mainTextStyle.copyWith(
                            fontSize: secondarySize,
                          ),
                        ),
                      ),
                    ),
                    sizedHeight02,
                    Text(
                      timestamp,
                      style: mainTextStyle.copyWith(
                        fontSize: miniSize,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
