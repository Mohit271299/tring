import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class task_activity_Screen extends StatefulWidget {
  const task_activity_Screen({Key? key}) : super(key: key);

  @override
  _task_activity_ScreenState createState() => _task_activity_ScreenState();
}



class _task_activity_ScreenState extends State<task_activity_Screen> {

  bool appartment = false;
  bool shop = false;
  bool office = false;

  int selectedCard = -1;
  List<String> list_task = [
    "assets1/phone_call.png",
    "assets1/follow_ups.png",
    "assets1/site_visit.png",
    "assets1/meeting.png",
  ];

  List<String> list_tasks = ['Follow Ups', 'Phone Call', 'Site Visit','Meeting'];
  String _startTask = 'Follow Ups';


  void add_task(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            color: Color(0xff737373),
            child: Container(
              height: 429,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 92, right: 92),
                    child: GridView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          mainAxisExtent: 100,
                        ),
                        itemCount: list_task.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              add_task_details();
                              // select_floor();
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                              ),
                              child: Image.asset(list_task[index],height:80 ,width: 80,),
                            ),
                          );
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40,top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0, left: 0, right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Color(0xff007DEF)),
                          child: Container(
                            margin: EdgeInsets.all(4.33),
                            child: Icon(
                              Icons.add,
                              color: Color(0xffFFFFFF),
                              size: 11.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text(
                            'Add Estimate',
                            style: TextStyle(
                                color: Color(0xff007DEF),
                                decoration: TextDecoration.none,
                                fontFamily: 'GR',
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          );
        });
  }
  void add_task_details(){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context){
      return Container(
        color: Color(0xff737373),
        child: Container(
          height: 493,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 15, bottom: 15),
                  child: DropdownButton(
                    elevation: 24,
                    dropdownColor: Colors.transparent,
                    iconEnabledColor: Color(0xff007DEF),
                    iconSize: 14,
                    underline: SizedBox(),
                    value: _startTask,
                    selectedItemBuilder:
                        (BuildContext context) {
                      return list_tasks
                          .map<Widget>((String item) {
                        return Container(
                            alignment: Alignment.center,
                            child: Text('$item',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'GR',
                                fontWeight: FontWeight.w600)));
                      }).toList();
                    },
                    items: list_tasks.map((item) {
                      return DropdownMenuItem<String>(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 3,horizontal:0.5),
                          decoration: BoxDecoration(
                            color: Color(0xfff3f3f3),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 5,top: 12,bottom: 12),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              '$item',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'GR',fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        value: item,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _startTask = value as String;
                      });
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 38, right: 38,bottom:10 ),
                  decoration: BoxDecoration(
                    color: Color(0xfff3f3f3),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Flexible(
                        child: TextFormField(
                          // controller: passwordController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(top: 5,left: 12),
                            labelText: 'Assign To',
                            labelStyle: TextStyle(
                              color: Color(0xff9d9d9d),
                              fontSize: 12.0,
                            ),
                            border: InputBorder.none,
                          ),
                          style: typeFont(),
                        ),
                      ),
                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          'assets1/Vector_person.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 38, right: 38,bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0xfff3f3f3),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextFormField(
                          // controller: passwordController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(top: 5,left: 12),
                            labelText: 'Associated Lead',
                            labelStyle: TextStyle(
                              color: Color(0xff9d9d9d),
                              fontSize: 12.0,
                            ),
                            border: InputBorder.none,
                          ),
                          style: typeFont(),
                        ),
                      ),
                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          'assets1/Vector_person.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 38,right: 38,bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xfff3f3f3),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: TextFormField(
                                  // controller: passwordController,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(top: 5,left: 12),
                                    labelText: 'From Date',
                                    labelStyle: TextStyle(
                                      color: Color(0xff9d9d9d),
                                      fontSize: 12.0,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: typeFont(),
                                ),
                              ),
                               Container(
                                 margin: EdgeInsets.symmetric(horizontal: 12),
                                child: SvgPicture.asset(
                                  'assets1/Vector_calendar.svg',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 19,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xfff3f3f3),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: TextFormField(
                                  // controller: passwordController,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(top: 5,left: 12),
                                    labelText: 'To Date',
                                    labelStyle: TextStyle(
                                      color: Color(0xff9d9d9d),
                                      fontSize: 12.0,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: typeFont(),
                                ),
                              ),
                               Container(
                                 margin: EdgeInsets.symmetric(horizontal: 12),
                                child: SvgPicture.asset(
                                  'assets1/Vector_calendar.svg',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 38,right: 38,bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xfff3f3f3),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: TextFormField(
                                  // controller: passwordController,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(top: 5,left: 12),
                                    labelText: 'Reminder',
                                    labelStyle: TextStyle(
                                      color: Color(0xff9d9d9d),
                                      fontSize: 12.0,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: typeFont(),
                                ),
                              ),
                               Container(
                                 margin: EdgeInsets.symmetric(horizontal: 12),
                                child: SvgPicture.asset(
                                  'assets1/Vector_calendar.svg',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 19,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xfff3f3f3),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: TextFormField(
                                  // controller: passwordController,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(top: 5,left: 12),
                                    labelText: 'Priority',
                                    labelStyle: TextStyle(
                                      color: Color(0xff9d9d9d),
                                      fontSize: 12.0,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: typeFont(),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 38, right: 38,bottom:10 ),
                  decoration: BoxDecoration(
                    color: Color(0xfff3f3f3),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          maxLines: 7,
                          // controller: passwordController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(top: 5,left: 12),
                            labelText: 'Assign To',
                            labelStyle: TextStyle(
                              color: Color(0xff9d9d9d),
                              fontSize: 12.0,
                            ),
                            border: InputBorder.none,
                          ),
                          style: typeFont(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
        });
  }

  TextStyle typeFont(){
    return TextStyle(
      fontSize: 14,
      color: Color(0xff0B0D16),
      fontFamily: 'GR',
      fontWeight: FontWeight.w600
    );
  }
  TextStyle beforeFont(){
    return TextStyle(
      fontSize: 14,
      color: Color(0xff0B0D16),
      fontFamily: 'GR',
      fontWeight: FontWeight.w600
    );
  }


  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      add_task();
      Duration.microsecondsPerSecond;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3) ,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff007DEF),
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   backgroundColor: Colors.white,
      //   selectedItemColor: Colors.blueAccent,
      //   unselectedItemColor: Color(0xff5D5D5D),
      //   selectedLabelStyle:
      //   TextStyle(fontFamily: 'GB', fontSize: 10, color: Colors.black),
      //   unselectedLabelStyle:
      //   TextStyle(fontFamily: 'GB', fontSize: 10, color: Color(0xff5D5D5D)),
      //   elevation: 10,
      //   type: BottomNavigationBarType.fixed,
      //   showUnselectedLabels: true,
      //   showSelectedLabels: true,
      //   iconSize: 25,
      //   // onTap: _onItemTapped,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       label: "Home",
      //       icon: SvgPicture.asset('assets1/Vector_home.svg',
      //           height: 25, width: 25, color: Color(0xff5D5D5D)),
      //       activeIcon: SvgPicture.asset(
      //         'assets1/Vector.svg',
      //         height: 25,
      //         width: 25,
      //         color: Colors.blueAccent,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "Pet Lover",
      //       icon: SvgPicture.asset('assets1/Vector_search.svg',
      //           height: 25, width: 25, color: Color(0xff5D5D5D)),
      //       activeIcon: SvgPicture.asset(
      //         'assets1/Vector.svg',
      //         height: 25,
      //         width: 25,
      //         color: Colors.blueAccent,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "home",
      //       icon: SvgPicture.asset('assets1/Vector_estimate.svg',
      //           height: 25, width: 25, color: Color(0xff5D5D5D)),
      //       activeIcon: SvgPicture.asset(
      //         'assets1/Vector.svg',
      //         height: 25,
      //         width: 25,
      //         color: Colors.blueAccent,
      //       ),
      //     ),
      //   ],
      // ),

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
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 20),
                          child: Text(
                            'Task',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'GR',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height,
                        )
                      ],
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
