import 'dart:developer';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const home());
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _firstLayer(context),
        _secondLayer(context),
        _thirdLayer(context)
      ],
    ));
  }

  Container _thirdLayer(BuildContext context) => Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * (30 / 100),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              height: MediaQuery.of(context).size.height * (65 / 100),
            )
          ],
        ),
      );

  Column _secondLayer(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * (20 / 100),
          ),
          Container(
            // color: Colors.red,
            height: MediaQuery.of(context).size.height * (20 / 100),
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Color.fromARGB(77, 11, 10, 10),
              height: MediaQuery.of(context).size.height * (8 / 100),
            ),
          ),
        ],
      );

  Column _firstLayer(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height * (35 / 100),
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://t4.ftcdn.net/jpg/01/16/61/93/240_F_116619399_YA611bKNOW35ffK0OiyuaOcjAgXgKBui.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      );
}

void main() {
  runApp(const MyApp());
}
