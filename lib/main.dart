import 'package:anime_store/data/datasource/static/appColor.dart';
import 'package:anime_store/view/screen/fristPage.dart';
import 'package:anime_store/view/screen/home.dart';
import 'package:anime_store/view/screen/logIn.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anime Store',

      theme: ThemeData(
          backgroundColor: appColor.darkbackground,
          scaffoldBackgroundColor: appColor.darkbackground),
      home: 
      AnimatedSplashScreen(
        backgroundColor: appColor.darkbackground,
        duration: 3000,
        splashIconSize: 400,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Image(
                image: AssetImage("assets/images/icon.png"),
              ),
            ),
          ],
        ),
        nextScreen: fristPage(),
        splashTransition: SplashTransition.fadeTransition,
      ),
      getPages: [
        GetPage(name: "/home", page: () => home()),
        GetPage(name: "/frist", page: () => fristPage()),
        GetPage(name: "/logIn", page: () => logIn()),
      ],
    );
  }
}
