// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Icon example"),
          leading: const Icon(FontAwesomeIcons.dragon),
        ),
        body: Container(
            child:const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.add_shopping_cart, color: Colors.brown, size:50),
                    Icon(Icons.g_translate, color: Colors.amber, size:50),
                    Icon(Icons.verified_user, color:Colors.lightGreenAccent, size:50)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.accessibleIcon, color: Colors.brown, size:50),
                    Icon(FontAwesomeIcons.angleDoubleUp, color: Colors.amber, size:50),
                    Icon(FontAwesomeIcons.font, color:Colors.lightGreenAccent, size:50)
                  ],
                )
              ],
            )
        )
    );
  }
}