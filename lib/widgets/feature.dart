import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Feature extends StatelessWidget {
  final _icon;
  final _title;

  Feature(this._icon, this._title);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      decoration: BoxDecoration(
          color: Color.fromRGBO(240, 233, 251, 1),
          borderRadius: BorderRadius.circular(10)),
      width: 150,
      child: Row(children: [
        CircleAvatar(
          child: _icon,
        ),
        SizedBox(
          width: 10,
        ),
        Text(_title)
      ]),
    );
  }
}
