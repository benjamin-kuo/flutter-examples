// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

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
          title: const Text("Image example"),
          leading: const Icon(FontAwesomeIcons.dragon),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image.network(
                  'https://titangene.github.io/images/cover/flutter.jpg'),
            ),
            Expanded(
              child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                  'https://titangene.github.io/images/cover/flutter.jpg'),
            ),
            Expanded(
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/waiting.gif',
                    image:
                    'https://titangene.github.io/images/cover/flutter.jpg')),
          ],
        ));
  }
}