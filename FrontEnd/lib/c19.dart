import 'package:flutter/material.dart';
import 'data_card.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class C19 extends StatefulWidget {
  @override
  _C19State createState() => _C19State();
}

class _C19State extends State<C19> {
  Map data;
  List userData;
  //List user_name;

  Future getData() async {
    http.Response response =
        await http.get("https://api.npoint.io/75052110221d35058507");
    debugPrint(response.body);
    data = json.decode(response.body);
    setState(() {
      userData = data["data"];
      //user_name=data["user name"];
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: userData == null ? 0 : userData.length,
        itemBuilder: (BuildContext context, int index) {
          return DataCard(
            state: userData[index]["state"],
            new1: userData[index]["new"],
            death: userData[index]["deaths"],
            recov: userData[index]["recovered"],
          );
        });
  }
}
