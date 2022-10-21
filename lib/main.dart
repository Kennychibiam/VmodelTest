import 'package:flutter/material.dart';
import 'package:vmodel/screens/reviews.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Avenir Next"),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color.fromARGB(255, 84, 59, 58),
        ),
        actions: [],
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Reviews",
          style: TextStyle(
            color: Color.fromARGB(255, 84, 59, 58),
          ),
        ),
      ),
      body: Reviews(),
    );
  }
}
