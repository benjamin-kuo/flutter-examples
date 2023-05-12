// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:english_words/english_words.dart';
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
  static const loadingTag = "@@@END@@@";
  final _words = <String>[loadingTag];
  final _divider = const Divider(color: Colors.amber, thickness: 5,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
          leading: const Icon(FontAwesomeIcons.dragon),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              if (_words[index] == loadingTag) {
                _retrieveData();
                return Container(
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator());
              } else {
                return ListTile(
                  title: Text(_words[index]),
                );
              }
            },
            separatorBuilder: (context, index) => _divider,
            itemCount: _words.length));
  }

  void _retrieveData() {
    Future.delayed(const Duration(seconds: 2)).then((e) {
      setState(() {
        _words.insertAll(
            _words.length - 1,
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      });
    });
  }
}