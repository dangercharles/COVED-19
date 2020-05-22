import 'package:flutter/material.dart';

class DataCard extends StatefulWidget {
  final String state,new1,death,recov;
   //int x;
   DataCard({Key key, this.state,this.death,this.new1,this.recov}) : super(key: key);
  @override
  _DataCardState createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child:Column(children: <Widget>[
        Row(children: <Widget>[
          Text('  STATE : '),
          Text(widget.state)
        ],
        ),
         Row(children: <Widget>[
          Text('  NEW CASES : '),
          Text(widget.new1)
        ],
        ),
         Row(children: <Widget>[
          Text('  DEATHS : '),
          Text(widget.death)
        ],
        ),
         Row(children: <Widget>[
          Text('  RECOVERED : '),
          Text(widget.recov)
        ],
        ),
      ],)
    );
  }
}