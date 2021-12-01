import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tring/screens/initialization/project_type.dart';

class projectImage extends StatefulWidget {
  @override
  _projectImageState createState() => _projectImageState();
}

class _projectImageState extends State<projectImage> {
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
                                  'Project Images',
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color(0xff485056)),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xff007DEF), width: 1),
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xffCCE5FC)),
                                margin: EdgeInsets.only(top: 32, left: 50),
                                child: Container(
                                  margin: EdgeInsets.all(12),
                                  child: const Icon(
                                    Icons.add,
                                    color: Color(0xff007DEF),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 25),
                                child: const Text(
                                  'Brochure',
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color(0xff485056)),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xff007DEF), width: 1),
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xffCCE5FC)),
                                margin: EdgeInsets.only(top: 32, left: 50),
                                child: Container(
                                  margin: EdgeInsets.all(12),
                                  child: const Icon(
                                    Icons.file_upload,
                                    color: Color(0xff007DEF),
                                  ),
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
                                              builder: (context) =>projectType()));
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
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.all(Radius.circular(39))
                        ),
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
