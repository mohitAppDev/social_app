import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/application_controller.dart';
import 'constants/constants.dart';
import 'routes/app_pages.dart';
import 'theme/app_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApplicationController>(
        init: ApplicationController(),
        builder: (controller) {
          return GetMaterialApp(
            theme: AppTheme.lightTheme,
            themeMode: ThemeMode.light,
            title: LabelConst.appName,
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: AppColors.AppBgColor,
              body: SafeArea(
                child: AnimatedSplashScreen.withScreenFunction(
                  backgroundColor: Colors.black,
                  splash: Image.asset(
                    ImageConst.imageSplash,
                    width: 300,
                  ),
                  screenFunction: () async {
                    return controller.screenFunction();
                  },
                  splashIconSize: 250.0,
                  duration: 2500,
                ),
              ),
            ),
            getPages: AppPages.list,
          );
        },
    );
  }
}
