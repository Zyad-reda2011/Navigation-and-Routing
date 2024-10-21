// ignore_for_file: unused_import, prefer_const_constructors

import 'package:demo/screen/new.dart';
import 'package:demo/screen/old.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget 
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        backgroundColor: Colors.indigoAccent,
        foregroundColor:Colors.white,
        // title: Text('my name is zyad'),
        // actions: [Text("memo")],
        // leading:Text('my name is zyad'),
        title: Text("Navigation and Routing Project"),
        centerTitle: true,
      ),
      body: HomeRoute(),
      drawer: Text("data"),
    );
  }
}