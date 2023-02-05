import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/blocs/reslist_cubit.dart';
import 'package:food_ninja/constants/screens_dir.dart';
import 'package:food_ninja/constants/themes.dart';
import 'package:food_ninja/models/res_group.dart';
import 'package:food_ninja/screens/onboarding/splash_screen.dart';
import 'package:food_ninja/screens/auth_screens/auth_reset_complete.dart';
import 'package:food_ninja/screens/auth_screens/forgot_pwd.dart';
import 'package:food_ninja/screens/auth_screens/password_reset.dart';
import 'package:food_ninja/screens/pages/home/home_screen.dart';
import 'package:food_ninja/screens/pages/landing/main_page.dart';
// import 'package:food_ninja/screens/onboarding/splash_screen.dart';

import 'screens/onboarding/onboarding.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      // tools: [
      //   ...DevicePreview.defaultTools,
      //   DevicePreviewScreenshot(
      //     multipleScreenshots: true,
      //     onScreenshot: (context, screenshot) => screenshotAsFiles(
      //       Directory.current,
      //     ),
      //   ),
      // ],
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

        theme: MyThemes.lightTheme,
        // darkTheme: MyThemes.darkTheme,
        home: MultiBlocProvider(
          providers: [
            BlocProvider<ResListCubit>(
              create: (_) {
                ResListCubit resListCubit = ResListCubit();
                if (resListCubit.state.isEmpty) {
                  print('object');
                  resListCubit.getResList();
                } else {
                  print('hello');
                }

                return resListCubit;
              },
              child: BlocBuilder<ResListCubit, List<ResGroup>>(
                builder: (_, child) => const SplashScreen(),
              ),
            ),
          ],
          child: BlocBuilder<ResListCubit, List<ResGroup>>(
            builder: (_, child) => const SplashScreen(),
          ),
        ),

        routes: {
          // initialRoute: (context) => const SplashScreen(),
          onboardingRoute: (context) => const OnboardingScreen(),
          homeRoute: (context) => const HomeScreen(),
          mainRoute: (context) => const MainPage(),
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

/*BlocProvider<ResListCubit>(
          create: (_) {
            ResListCubit resListCubit = ResListCubit();
            if (resListCubit.state.isEmpty) {
              resListCubit.getResList();
            }

            return resListCubit;
          },
          child: BlocBuilder<ResListCubit, List<ResGroup>>(
            builder: (_, child) => const SplashScreen(),
          ),
        ), */