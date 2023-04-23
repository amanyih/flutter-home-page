// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:home_page/widgets/custom_slider.dart';
import 'package:home_page/widgets/feature.dart';

import '../widgets/transaction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: -50,
        left: -42,
        child: Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
              color: Color.fromRGBO(240, 233, 251, 0.1),
              borderRadius: BorderRadius.circular(80)),
        ),
      ),
      Positioned(
        top: 240,
        right: -90,
        child: Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
              color: Color.fromRGBO(22, 138, 237, 0.8),
              borderRadius: BorderRadius.circular(80)),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello, selam",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(206, 255, 255, 255)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Welcome Back!",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () => {},
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(22, 138, 237, 0.5),
                              borderRadius: BorderRadius.circular(50)),
                          child: Stack(children: [
                            Image.asset(
                              "assets/image/Bell.png",
                              width: 25,
                            ),
                            Positioned(
                              top: 3,
                              left: 1.5,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.red),
                              ),
                            )
                          ])),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Text(
                      "Available Limit",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "20,000.00",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomSlider(),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80),
                topRight: Radius.circular(80),
              ),
              child: Container(
                  padding:
                      EdgeInsets.only(top: 55, left: 36, right: 36, bottom: 10),
                  color: Color.fromARGB(244, 255, 255, 255),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Feature(
                                    Image.asset("assets/image/Pay_icon.png"),
                                    "Pay"),
                                SizedBox(
                                  width: 20,
                                ),
                                Feature(
                                    Image.asset("assets/image/Scan_Icon.png"),
                                    "Scan"),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Feature(
                                    Image.asset(
                                        "assets/image/Withdraw_icon.png"),
                                    "Withdraw"),
                                SizedBox(
                                  width: 20,
                                ),
                                Feature(
                                    Image.asset(
                                        "assets/image/pay_bills_icon.png"),
                                    "Pay Bills"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transaction History",
                              style: TextStyle(
                                  color: Color.fromRGBO(81, 58, 167, 1)),
                            ),
                            Text(
                              "See all",
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [Transaction(), Transaction()],
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ]),
      ),
    ]);
  }
}
