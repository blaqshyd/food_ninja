import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('assets/images/logo.png'),
        ),
        const SizedBox(height: 40),
        const CircularProgressIndicator(color: Colors.white),
      ],
    );
  }
}
