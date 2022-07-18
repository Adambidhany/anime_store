import 'dart:ui';

import 'package:anime_store/core/constants/imageAssets.dart';
import 'package:anime_store/data/datasource/static/appColor.dart';
import 'package:anime_store/view/widget/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class logIn extends StatelessWidget {
  const logIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                children: [
                  Image(
                      image: AssetImage(imageAssets.logo),
                      height: Get.height * .35),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                      child: Column(children: [
                        Container(
                            height: Get.height * .7,
                            child:
                                LayoutBuilder(builder: (context, constraints) {
                              double innerHeight = constraints.maxHeight;
                              double innerWidth = constraints.maxWidth;
                              return Stack(fit: StackFit.expand, children: [
                                Container(
                                  height: Get.height * 0.5,
                                  width: Get.width,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Get.width * .1,
                                      vertical: Get.height * .1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: appColor.darkcolor,
                                  ),
                                  child: Column(children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: appColor.darkbackground,
                                          hintText: "phon number",
                                          hintStyle: TextStyle(
                                              color: appColor.darkcolor,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(
                                      height: Get.height * .05,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: appColor.darkbackground,
                                          hintText: "password",
                                          hintStyle: TextStyle(
                                              color: appColor.darkcolor,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: false,
                                            onChanged: (value) {},
                                          ),
                                          Text(
                                            "Remember me",
                                            style: TextStyle(
                                                color: appColor.darkcolor),
                                          )
                                        ],
                                      ),
                                      height: Get.height * .1,
                                    ),
                                    buttons(
                                      backColor: appColor.primarycolor,
                                      onPressed: () {},
                                      text: "LOG IN",
                                      textColor: appColor.darkTextcolor,
                                      border: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(1)),
                                    )
                                  ]),
                                )
                              ]);
                            }))
                      ])),
                ],
              ),
            )));
  }
}
