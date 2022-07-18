import 'package:anime_store/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page")),
      body: Center(
          child: GetX<homeController>(
              init: homeController(),
              builder: ((controller) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.incrment();
                          },
                          icon: Icon(Icons.add)),
                      Text("${controller.counter}"),
                      IconButton(
                          onPressed: () {
                            controller.decrment();
                          },
                          icon: Icon(Icons.remove))
                    ],
                  )))),
    );
  }
}
