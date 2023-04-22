// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_page/widgets/feature.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            "Hello, Selam",
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
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(22, 138, 237, 0.5),
                          borderRadius: BorderRadius.circular(50)),
                      child: FaIcon(FontAwesomeIcons.bell))
                ],
              ),
              SizedBox(
                height: 50,
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
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    child: Row(
                      children: [
                        Text("10,000"),
                        SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                trackHeight: 10,
                                activeTrackColor: Colors.white),
                            child: Slider(
                              onChanged: (value) => {},
                              value: 0.5,
                            )),
                        Text("30,000"),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(70, 90),
              topRight: Radius.elliptical(70, 90),
            ),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 55, horizontal: 36),
                color: Colors.white,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Feature(FaIcon(FontAwesomeIcons.handHoldingDollar),
                                "Pay"),
                            SizedBox(
                              width: 20,
                            ),
                            Feature(FaIcon(FontAwesomeIcons.handHoldingDollar),
                                "Pay"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Feature(FaIcon(FontAwesomeIcons.handHoldingDollar),
                                "Pay"),
                            SizedBox(
                              width: 20,
                            ),
                            Feature(FaIcon(FontAwesomeIcons.handHoldingDollar),
                                "Pay"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Transaction History"), Text("See all")],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.near_me),
                      ),
                      title: Text("Ethio telecom bill"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Utility Bill"),
                          Text("Date 20/ 12/23")
                        ],
                      ),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [Text("5600.00"), Text("ETB")]),
                    )
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}
