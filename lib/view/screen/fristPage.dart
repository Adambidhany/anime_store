import 'package:anime_store/core/constants/imageAssets.dart';
import 'package:anime_store/data/datasource/static/appColor.dart';
import 'package:anime_store/view/widget/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class fristPage extends StatelessWidget {
  const fristPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                    image: AssetImage(imageAssets.logo),
                    width: size.width * .5),
                Container(
                  height: size.height * .2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buttons(
                          text: "LOG IN",
                          backColor: appColor.darkbackground,
                          textColor: appColor.darkTextcolor,
                          onPressed: () {
                            Get.toNamed("/logIn");
                          },
                          border: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: appColor.primarycolor))),
                      buttons(
                        text: "SIGN IN",
                        backColor: appColor.primarycolor,
                        textColor: appColor.darkTextcolor,
                        onPressed: () {},
                        border: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
