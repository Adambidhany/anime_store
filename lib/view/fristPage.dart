import 'package:flutter/material.dart';

class fristPage extends StatelessWidget {
  const fristPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first page")),
      body: Center(child: Text("this the first page")),
    );
  }
}
