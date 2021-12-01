import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tring/screens/initialization/tower_setup_series.dart';

class projectType extends StatefulWidget {
  @override
  _projectTypeState createState() => _projectTypeState();
}

class _projectTypeState extends State<projectType> {
  List Data = ['assets1/Rectangle_13.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff007DEF),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xfff3f3f3),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15))),
                    margin: EdgeInsets.only(top: 97),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 47, left: 20, right: 91),
                          child: const Text(
                            'Lets begin with project initialization',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 25),
                                child: const Text(
                                  'Select Project Type',
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color(0xff485056)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 30, top: 64),
                                child: const Text(
                                  'Please your project type to proccessed',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff007DEF),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              // Container(
                              //     color: Colors.red,
                              //     margin: EdgeInsets.only(
                              //         top: 30, left: 72, right: 72),
                              //     child: Column(
                              //       children: [
                              //         Row(
                              //           mainAxisAlignment:
                              //               MainAxisAlignment.spaceBetween,
                              //           children: [
                              //             Stack(children: [
                              //               Container(
                              //                 height: 80,
                              //                 width: 80,
                              //                 decoration: const BoxDecoration(
                              //                   image: DecorationImage(
                              //                       image: AssetImage(
                              //                           'assets1/Rectangle_13.jpg'),
                              //                       fit: BoxFit.fill),
                              //                   borderRadius: BorderRadius.all(
                              //                       Radius.circular(10.0)),
                              //                 ),
                              //               ),
                              //               Container(
                              //                 height: 50,
                              //                 width: 50,
                              //                 decoration: const BoxDecoration(
                              //                   image: DecorationImage(
                              //                       image: AssetImage(
                              //                           'assets1/house.jpg'),
                              //                       fit: BoxFit.fill),
                              //                   borderRadius: BorderRadius.all(
                              //                       Radius.circular(10.0)),
                              //                 ),
                              //               ),
                              //             ]),
                              //             // Image.asset('assets1/Rectangle_13.jpg'),
                              //             Image.asset(
                              //                 'assets1/Rectangle_13.jpg'),
                              //           ],
                              //         ),
                              //         Row(
                              //           mainAxisAlignment:
                              //               MainAxisAlignment.center,
                              //           children: [
                              //             Image.asset(
                              //                 'assets1/Rectangle_13.jpg'),
                              //             Image.asset(
                              //                 'assets1/Rectangle_13.jpg'),
                              //           ],
                              //         ),
                              //       ],
                              //     )),

                              Container(
                                color: Colors.grey,
                                margin: const EdgeInsets.all(10),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        image: DecorationImage(
                                          image: AssetImage('assets1/Rectangle_13.jpg')
                                        )
                                      ),
                                      child: Container(
                                        height: 30,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets1/house.jpg')
                                            )
                                        ),
                                      ),
                                    ),

                                  ],

                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 10, top: 30, bottom: 30),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: const Color(0xfff3f3f3),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xff007DEF))),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 28, vertical: 9),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'Back',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff9d9d9d)),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  towerSetup_series_class()));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 30, bottom: 30, left: 10),
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff007DEF),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 28, vertical: 9),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Next',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(39.0)),
                    ),
                    margin: EdgeInsets.only(top: 80, left: 20, right: 20),
                    height: 35,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffE5E5E5),
                        borderRadius: BorderRadius.all(Radius.circular(39.0)),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 13,horizontal: 30),
                      height: 7,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.all(Radius.circular(39))
                        ),
                        margin: EdgeInsets.only(right: 71),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
