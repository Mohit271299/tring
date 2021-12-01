import 'package:flutter/material.dart';
import 'package:tring/screens/authentication/login.dart';
import 'package:tring/screens/initialization/project_preview.dart';

class floor_setup extends StatefulWidget {

  @override
  _floor_setupState createState() => _floor_setupState();
}

class _floor_setupState extends State<floor_setup> {
  int _counter = 1;

  void _increamentCounter() {
    setState(() {
      _counter++;
    });
  }
  floorSeries(){
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 25, left: 18),
            decoration: BoxDecoration(
              color: Color(0xffE5E5E5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              child: TextFormField(
                // controller: totaltowercontroller1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0.0),
                  labelText: 'Unit',
                  labelStyle: TextStyle(
                    color: Color(0xff828282),
                    fontSize: 12.0,
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Color(0xff485056),
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 25, left: 18),
            decoration: BoxDecoration(
              color: Color(0xffE5E5E5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              child: TextFormField(
                // controller: totaltowercontroller1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0.0),
                  labelText: 'Floor',
                  labelStyle: TextStyle(
                    color: Color(0xff828282),
                    fontSize: 12.0,
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Color(0xff485056),
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),

        Container(
          margin: const EdgeInsets.only(top: 25, left: 16, right: 18),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0), color: Colors.red),
          child: Container(
            margin: EdgeInsets.all(6.33),
            child: Icon(
              Icons.clear,
              color: Color(0xffFFFFFF),
              size: 10.0,
            ),
          ),
        )
      ],
    );
  }

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
                                  'Floor Setup',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'GB',
                                      color: Color(0xff485056)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 18, top: 25,right: 51),
                                child: const Text(
                                  'Select/Create Floor count for one building/tower and the app will apply these count for all the buildings/towers',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'GSB',
                                      color: Color(0xff485056)),
                                ),
                              ),
                              for (var index = 1;
                              index < _counter;
                              index++) ...{floorSeries()},

                              GestureDetector(
                                onTap: () {
                                  _increamentCounter();
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 15, left: 20, right: 18),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: Color(0xff007DEF)),
                                  child: Container(
                                    margin: const EdgeInsets.all(6),
                                    child: const Icon(
                                      Icons.add,
                                      color: Color(0xffFFFFFF),
                                      size: 10,
                                    ),
                                  ),
                                ),
                              ),




                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                                  project_preview()));
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
                                        margin: const EdgeInsets.symmetric(
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
                      margin:
                      EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                      height: 7,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius:
                            BorderRadius.all(Radius.circular(39))),
                        margin: EdgeInsets.only(right: 138),
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
