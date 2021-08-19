import 'dart:collection';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebasewithflutter/LimitToFirstandLimitToLast.dart';
import 'package:firebasewithflutter/StartAtandEndAt.dart';
import 'package:firebasewithflutter/aramaEqualTo.dart';
import 'package:firebasewithflutter/kisiEkle.dart';
import 'package:firebasewithflutter/kisiGuncelle.dart';
import 'package:firebasewithflutter/kisiSil.dart';
import 'package:firebasewithflutter/tumKisiler.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override



  void initState() {
    super.initState();
    kisiEkle();
    //kisiSil();
    //kisiGuncelle();
    //tumKisiler();
    //equalToIleArama();
    //limitToFirsandLimitToLast();
    //startAtandEndAt();

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase İşlemleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[

          ],
        ),
      ),

    );
  }
}
