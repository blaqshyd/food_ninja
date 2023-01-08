import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants/screens_dir.dart';
import 'package:food_ninja/constants/themes.dart';
import 'package:food_ninja/screens/auth_screens/auth_reset_complete.dart';
import 'package:food_ninja/screens/auth_screens/forgot_pwd.dart';
import 'package:food_ninja/screens/auth_screens/password_reset.dart';
import 'package:food_ninja/screens/home/home_screen.dart';
import 'package:food_ninja/screens/home/main_page.dart';
import 'package:food_ninja/screens/onboarding/splash_screen.dart';

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
      // minTextAdapt: true,
      // splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        themeMode: ThemeMode.system,
        title: 'Food Ninja',
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        //theme for light
        theme: MyThemes.lightTheme,
        // darkTheme: MyThemes.darkTheme,
        initialRoute: initialRoute,
        routes: {
          initialRoute: (context) => const SplashScreen(),
          onboardingRoute: (context) => const OnboardingScreen(),
          homeRoute: (context) => const HomeScreen(),
          mainRoute:(context) => const MainPage(),
          signInRoute: (context) => const SignInScreen(),
          signUpRoute: (context) => const SignUpScreen(),
          forgotPwdRoute: (context) => const ForgotPassword(),
          resetPasswordRoute: (context) => const ResetPassword(),
          singUpProcessRoute: (context) => const SignUpProcess(),
          paymentMethodRoute: (context) => const PaymentMethod(),
          uploadFileRoute: (context) => const UploadFile(),
          uploadReviewRoute: (context) => const UploadReview(),
          setLocationRoute: (context) => const SetLocation(),
          authCompleteRoute: (context) => const AuthComplete(),
          authResetCompleteRoute: (context) => const AuthResetComplete(),
        },
      ),
    );
  }
}

/*


 */