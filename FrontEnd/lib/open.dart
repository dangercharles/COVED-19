import 'package:flutter/material.dart';
import 'c19.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COVED-19'),),
      body: C19(),
    );
  }
}