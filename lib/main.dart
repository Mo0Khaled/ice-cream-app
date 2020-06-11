import 'package:flutter/material.dart';
import 'package:icecreamapp/components/Home.dart';

main() => runApp(IceCreamApp());

class IceCreamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ice Cream Appp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Home(),
    );
  }
}
