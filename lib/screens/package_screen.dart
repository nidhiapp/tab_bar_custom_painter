import 'package:flutter/material.dart';
import 'package:tab_bar_custom_painter/screens/active_container.dart';
import 'package:tab_bar_custom_painter/screens/expired_container.dart';
import 'package:tab_bar_custom_painter/screens/queueed.dart';
import 'package:tab_bar_custom_painter/widgets/package_esim_cont.dart';
import 'package:tab_bar_custom_painter/widgets/tab_bar_painter.dart';

import 'dart:math' as math;

class PackageScreen extends StatefulWidget {
  const PackageScreen({super.key});

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  int _selectedIndex = 0;
  // static final List<String> _listOptions = <String>[
  //   'Active',
  //   'Queued',
  //   'Expired',
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  static final List<Widget> _containerlist = <Widget>[
    const ActiveContainer(),
    const QueuedConatiner(),
    const ExpiredContainer(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello, Nisreen',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      foregroundImage: NetworkImage(
                          'https://i.pinimg.com/736x/6c/3a/19/6c3a191d302fcfc2ff7320fdd54ca664.jpg'),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    PackageEsimContainer(
                        boxcolor: Color.fromARGB(255, 4, 22, 43),
                        boxtext: 'Data Packages',
                        textcolor: Colors.red),
                    SizedBox(
                      width: 16,
                    ),
                    PackageEsimContainer(
                        boxcolor: Colors.white,
                        boxtext: 'eSIMs',
                        textcolor: Colors.black),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _selectedIndex == 0
                  ? Stack(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.33,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: CustomPaint(
                                size: Size.fromWidth(
                                    MediaQuery.of(context).size.width * 0.33),
                                painter: TabPainter(color: Color.fromARGB(255, 195, 210, 196)))),
                        Positioned(
                            left: MediaQuery.of(context).size.width * .1,
                            top: MediaQuery.of(context).size.height * .015,
                            child: const Text(
                              'Active',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    )
                  : SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.33,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 0;
                            });
                          },
                          child: const Center(
                            child: Text(
                              'Active',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                          )),
                    ),
              _selectedIndex == 1
                  ? Stack(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.34,
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * 0,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: CustomPaint(
                                  size: Size.fromWidth(
                                      MediaQuery.of(context).size.width * 0.3),
                                  painter: TabPainter(color:  Color.fromARGB(255, 195, 210, 196))),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                              // width: 300,
                              child: CustomPaint(
                                  size: Size.fromWidth(
                                      MediaQuery.of(context).size.width * 0.3),
                                  painter: TabPainter(color:  Color.fromARGB(255, 195, 210, 196)))),
                        ),
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.015,
                            left: MediaQuery.of(context).size.width * 0.11,
                            child: const Text(
                              'Queued',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    )
                  : SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.34,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                          child: const Center(
                            child: Text(
                              'Queued',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                          )),
                    ),
              _selectedIndex == 2
                  ? Stack(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.33,
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child: CustomPaint(
                                size: Size.fromWidth(
                                    MediaQuery.of(context).size.width * 0.33),
                                painter: TabPainter(color:  Color.fromARGB(255, 195, 210, 196))),
                          ),
                        ),
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.015,
                            right: MediaQuery.of(context).size.width * 0.08,
                            child: const Text(
                              'Expired',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    )
                  : SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.33,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 2;
                            });
                          },
                          child: const Center(
                            child: Text(
                              'Expired',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                          )),
                    ),
            ],
          ),
          _containerlist.elementAt(_selectedIndex),
        ],
      ),
    );
  }
}
