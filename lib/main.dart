import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants/routes.dart';
import 'package:food_ninja/screens/auth_screens/sign_in_screen.dart';
import 'package:food_ninja/screens/auth_screens/sign_up_screen..dart';
import 'package:food_ninja/screens/home_screen.dart';
import 'package:food_ninja/screens/splash_screen.dart';

import 'screens/onboarding/onboarding.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        themeMode: ThemeMode.system,
        title: 'Food Ninja',
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          textTheme: Typography.englishLike2021.apply(fontSizeFactor: 1.sp),
        ),
        // home: const SplashScreen(),
        initialRoute: initialRoute,
        routes: {
          initialRoute: (context) => const SplashScreen(),
          onboardingRoute: (context) => const OnboardingScreen(),
          homeRoute: (context) => const HomeScreen(),
          signInRoute: (context) => const SignInScreen(),
          signUpRoute: (context) => const SignUpScreen(),
        },
      ),
    );
  }
}
