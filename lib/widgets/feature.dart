import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  final Image _icon;
  final String _title;

  const Feature(this._icon, this._title, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(240, 233, 251, 1),
          borderRadius: BorderRadius.circular(10)),
      width: 150,
      child: Row(children: [
        CircleAvatar(
          radius: 20,
          child: _icon,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          _title,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(81, 58, 167, 1)),
        )
      ]),
    );
  }
}
