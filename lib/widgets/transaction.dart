// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(240, 233, 251, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      "assets/image/ethiotelecom.png",
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ethio telecom bill",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                      Text(
                        "Utility Bill",
                        style: TextStyle(
                          color: Color.fromRGBO(81, 58, 167, 1),
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        "Date 12/20/23",
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "5600.00",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromRGBO(81, 58, 167, 1)),
                  ),
                  Text(
                    "ETB",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromRGBO(81, 58, 167, 1)),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
