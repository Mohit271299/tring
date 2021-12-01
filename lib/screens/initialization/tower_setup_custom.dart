import 'package:flutter/material.dart';
import 'package:tring/screens/authentication/login.dart';
import 'package:tring/screens/initialization/floor_setup.dart';
import 'package:tring/screens/initialization/tower_setup_series.dart';

class towerSetup_custom_class extends StatefulWidget {
  @override
  _towerSetup_custom_classState createState() =>
      _towerSetup_custom_classState();
}

class _towerSetup_custom_classState extends State<towerSetup_custom_class> {
  String _selectedGender = '1';

  bool series = false;
  bool custom = false;

  int _counter = 1;

  void _increamentCounter() {
    setState(() {
      _counter++;
    });
  }
  String dropdownValue = 'One';
  int _startTower = 1;
  int _endTower=1;
  List<int> list_items = [1,2,3,4];

  List<String> list_alphabet = ["#","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
  String _startalpha = 'A';


  unitCustom(){
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
                  labelText: 'Building/Tower - 1',
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
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 25),
                                child: const Text(
                                  'Tower Setup',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff485056)),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 25),
                                decoration: BoxDecoration(
                                  color: Color(0xffE5E5E5),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 50,
                                  margin: const EdgeInsets.only(left: 15),
                                  child: TextFormField(
                                    // controller: totaltowercontroller1,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(0.0),
                                      labelText: 'Number of Building/Tower',
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
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: const Text(
                                  'Select nameing series',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff485056)),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: RadioListTile(
                                      groupValue: _selectedGender,
                                      title: const Text('series'),
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedGender = value as String;
                                        });
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    towerSetup_series_class()));
                                      },
                                      value: '0',
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: RadioListTile(
                                      groupValue: _selectedGender,
                                      title: const Text('custom'),
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedGender = value as String;
                                        });
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    towerSetup_custom_class()));
                                      },
                                      value: '1',
                                    ),
                                  )
                                ],
                              ),
                              for (var index = 1;
                                  index < _counter;
                                  index++) ...{unitCustom()},

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
                                                  floor_setup()));
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
