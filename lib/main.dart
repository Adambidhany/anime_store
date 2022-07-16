import 'package:anime_store/view/fristPage.dart';
import 'package:anime_store/view/home.dart';
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
      home: AnimatedSplashScreen(
        backgroundColor: Color(121315),
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
        nextScreen: home(),
        splashTransition: SplashTransition.fadeTransition,
      ),
      getPages: [
        GetPage(name: "/home", page: () => home()),
        GetPage(name: "/frist", page: () => fristPage()),
      ],
    );
  }
}
