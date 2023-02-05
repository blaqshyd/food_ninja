import 'package:flutter/material.dart';

import '../../../../constants/screens_dir.dart';

class ChatBoxField extends StatelessWidget {
  const ChatBoxField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 20,
      child: Padding(
        padding: defaultPadding,
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            boxShadow: boxShadow,
            color: lightScaffoldBgColor,
            borderRadius: borderRadius,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Align(
              alignment: Alignment.center,
              child: MyFormField(
                  inputHint: 'Message',
                  inputTextStyle: mainTextStyle.copyWith(
                    fontSize: secondarySize,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  inputHintStyle: mainTextStyle.copyWith(
                    fontSize: primarySize,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FeatherIcons.send,
                      color: primaryColor,
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
