import 'package:flutter/material.dart';

class Page1 extends StatelessWidget{
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "page1",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("page1"),
        ),
        body: const Center(
          child: Text("page1"),
        ),
      ),
    );
  }

}