import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tring/screens/initialization/estimate_screen.dart';
import 'package:tring/screens/initialization/task_activity_screen.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const estimateScreen(),
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class _dashboardState extends State<dashboard> {
  List<String> list_alphabet = ['Block - A', 'Block - B', 'Block - C'];
  String _startalpha = 'Block - A';
  int _selectedIndex = 0;

  List myProducts = ['A-101', 'A-102', 'A-103', 'A-104'];
  List myProducts2 = ['A-101', 'A-102', 'A-103', 'A-104', 'A-105', 'A-106'];

  @override
  Size get preferredSize => Size.fromHeight(34);

  void show_info() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.7),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 224, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Text(
                    'Booking Info',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 17,
                        fontFamily: 'GR',
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 70, right: 70),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE8E8E8), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 14,
                        width: 28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xff398E5B)),
                        margin: EdgeInsets.fromLTRB(10, 8, 30, 8),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 7),
                        child: Text(
                          'Booked',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 13,
                              fontFamily: 'GR',
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 70, right: 70),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE8E8E8), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 14,
                        width: 28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffFBBC0A)),
                        margin: EdgeInsets.fromLTRB(10, 8, 30, 8),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 7),
                        child: Text(
                          'Enquiry',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 13,
                              fontFamily: 'GR',
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 70, right: 70),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE8E8E8), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 14,
                        width: 28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffEF6C00)),
                        margin: EdgeInsets.fromLTRB(10, 8, 30, 8),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 7),
                        child: Text(
                          'On Hold',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 13,
                              fontFamily: 'GR',
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 70, right: 70),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffE8E8E8), width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 14,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xff398E5B)),
                        ),
                        margin: EdgeInsets.fromLTRB(10, 8, 30, 8),
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff15740D)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 7),
                        child: Text(
                          'Toke Received',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 13,
                              fontFamily: 'GR',
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 70, right: 70),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffE8E8E8),
                        width: 1,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 14,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xffEF6C00)),
                        ),
                        margin: EdgeInsets.fromLTRB(10, 8, 30, 8),
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffEF0000)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 7),
                        child: Text(
                          'Rescale',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 13,
                              fontFamily: 'GR',
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                'assets1/Vector_drawer.svg',
                height: 15,
                width: 34,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        backgroundColor: Color(0xff007DEF),
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      drawer: Container(
        margin: EdgeInsets.only(top: 93, left: 15, bottom: 50),
        width: MediaQuery.of(context).size.width / 1.9,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0), bottom: Radius.circular(20)),
          child: Drawer(
            child: SingleChildScrollView(
              child: Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(20, 30, 20, 40),
                    child: Text(
                      'Tring App India',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff485056),
                          fontFamily: 'GB'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 5),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff757C85),
                          fontFamily: 'GB'),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        child: IconButton(
                          icon: Image.asset(
                            'assets1/handshake.png',
                            fit: BoxFit.contain,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Text('Sales',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff485056),
                              fontFamily: 'GR',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        child: IconButton(
                          icon: Image.asset(
                            'assets1/application-settings.png',
                            fit: BoxFit.fill,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: estimateScreen(),
                                  type: PageTransitionType.rightToLeft));
                          // Navigator.of(context).push(_createRoute());
                        },
                        child: Text('Estimates',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff485056),
                                fontFamily: 'GR',
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        child: IconButton(
                          icon: Image.asset(
                            'assets1/verify.png',
                            fit: BoxFit.fill,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              PageTransition(
                                duration: Duration(milliseconds: 700),
                                  child: task_activity_Screen(),
                                  type: PageTransitionType.rightToLeft));
                          // Navigator.of(context).push(_createRoute());
                        },
                        child: Text('Task',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff485056),
                                fontFamily: 'GR',
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        child: IconButton(
                          icon: Image.asset(
                            'assets1/group.png',
                            fit: BoxFit.fill,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Text('Leads',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff485056),
                              fontFamily: 'GR',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        child: IconButton(
                          icon: Image.asset(
                            'assets1/analytics.png',
                            fit: BoxFit.fill,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Text('Activity',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff485056),
                              fontFamily: 'GR',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        child: IconButton(
                          icon: Image.asset(
                            'assets1/contact-information.png',
                            fit: BoxFit.fill,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Text('Contract',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff485056),
                              fontFamily: 'GR',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 5, top: 5),
                    child: Text(
                      'Payment',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff757C85),
                          fontFamily: 'GR'),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        child: IconButton(
                          icon: Image.asset(
                            'assets1/contact-information.png',
                            fit: BoxFit.fill,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Text('Contract',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff485056),
                              fontFamily: 'GR',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 5, top: 5),
                    child: Text(
                      'Reports',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff757C85),
                          fontFamily: 'GR'),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        child: IconButton(
                          icon: Image.asset(
                            'assets1/analytics.png',
                            fit: BoxFit.fill,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Text('Activity',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff485056),
                              fontFamily: 'GR',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 5),
                          child: IconButton(
                            icon: Image.asset(
                              'assets1/log-in.png',
                              fit: BoxFit.fill,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Text('Register',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff007DEF),
                                fontFamily: 'GR',
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Color(0xff5D5D5D),
        selectedLabelStyle:
            TextStyle(fontFamily: 'GB', fontSize: 10, color: Colors.black),
        unselectedLabelStyle:
            TextStyle(fontFamily: 'GB', fontSize: 10, color: Color(0xff5D5D5D)),
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        iconSize: 25,
        // onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: SvgPicture.asset('assets1/Vector_home.svg',
                height: 25, width: 25, color: Color(0xff5D5D5D)),
            activeIcon: SvgPicture.asset(
              'assets1/Vector.svg',
              height: 25,
              width: 25,
              color: Colors.blueAccent,
            ),
          ),
          BottomNavigationBarItem(
            label: "Pet Lover",
            icon: SvgPicture.asset('assets1/Vector_search.svg',
                height: 25, width: 25, color: Color(0xff5D5D5D)),
            activeIcon: SvgPicture.asset(
              'assets1/Vector.svg',
              height: 25,
              width: 25,
              color: Colors.blueAccent,
            ),
          ),
          BottomNavigationBarItem(
            label: "home",
            icon: SvgPicture.asset('assets1/Vector_estimate.svg',
                height: 25, width: 25, color: Color(0xff5D5D5D)),
            activeIcon: SvgPicture.asset(
              'assets1/Vector.svg',
              height: 25,
              width: 25,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
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
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150.0,
                          child: ListView.builder(
                            physics: ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) =>
                                Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Colors.white,
                              ),
                              margin: EdgeInsets.only(left: 20, top: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(left: 15, top: 15),
                                      child: Text(
                                        'Profit',
                                        style: TextStyle(
                                            fontSize: 14, fontFamily: 'GB'),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 15, top: 15, right: 120),
                                      child: Text("\$1234,455,00.00",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'GB',
                                            color: Color(0xff05B884),
                                          ))),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 15, top: 10, bottom: 13),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text('Revenue'),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text("\$123,34,33.00")
                                          ],
                                        ),
                                        Container(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 50, right: 23),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text('Revenue'),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text("\$123,34,33.00")
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 0, top: 15, left: 28),
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 11, vertical: 8),
                                alignment: Alignment.center,
                                child: const Text(
                                  'Task & Activity',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'GR',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9D9D9D)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => dashboard()));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                    right: 0, top: 15, left: 0),
                                decoration: BoxDecoration(
                                  color: const Color(0xffA6D2F9),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Prpperty',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff007DEF)),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => dashboard()));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                    right: 28, top: 15, left: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 19, vertical: 8),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Payment',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff9D9D9D)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                height: 30,
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(
                                    right: 0, top: 15, left: 28),
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 7, bottom: 7, left: 10, right: 10),
                                  alignment: Alignment.centerLeft,
                                  child: DropdownButton(
                                    icon: SvgPicture.asset(
                                        'assets1/Polygon_1.svg'),
                                    iconEnabledColor: Color(0xff007DEF),
                                    iconSize: 14,
                                    underline: SizedBox(),
                                    value: _startalpha,
                                    selectedItemBuilder:
                                        (BuildContext context) {
                                      return list_alphabet
                                          .map<Widget>((String item) {
                                        return Container(
                                            alignment: Alignment.center,
                                            child: Text('$item',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'GB')));
                                      }).toList();
                                    },
                                    items: list_alphabet.map((item) {
                                      return DropdownMenuItem<String>(
                                        child: Text(
                                          '$item',
                                          style: TextStyle(
                                              fontSize: 12, fontFamily: 'GB'),
                                        ),
                                        value: item,
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        _startalpha = value as String;
                                      });
                                    },
                                  ),
                                )),
                            GestureDetector(
                              onTap: () {
                                show_info();
                              },
                              child: Container(
                                  margin: EdgeInsets.only(left: 15, top: 12),
                                  child: SvgPicture.asset(
                                    'assets1/Vector.svg',
                                    height: 15,
                                    width: 15,
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 34,
                                margin: const EdgeInsets.only(
                                    right: 20, top: 15, left: 28, bottom: 15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(12, 10, 10, 10),
                                      child: SvgPicture.asset(
                                        'assets1/Vector_search.svg',
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: TextFormField(
                                          textAlignVertical:
                                              TextAlignVertical.top,
                                          // controller: emailController,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                bottom: 14, top: 14),
                                            hintText: 'Search Here',
                                            hintStyle: TextStyle(
                                              color: Color(0xff9d9d9d),
                                              fontFamily: 'GR',
                                              fontSize: 12.0,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              margin: EdgeInsets.only(right: 67),
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: SvgPicture.asset(
                                    'assets1/Vector_filter.svg',
                                    height: 12,
                                    width: 12,
                                  )),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          margin:
                              EdgeInsets.only(left: 15, right: 15, bottom: 10),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 9, horizontal: 11),
                            child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 4,
                                  childAspectRatio: 2,
                                ),
                                itemCount: myProducts.length,
                                itemBuilder: (BuildContext ctx, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff007DEF)),
                                    child: Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.white,
                                              blurRadius: 13,
                                              spreadRadius: 25)
                                        ]),
                                        margin: EdgeInsets.symmetric(
                                            vertical: 9, horizontal: 18),
                                        child: Text(
                                          myProducts[index],
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'GB',
                                              color: Color(0xff007DEF)),
                                        )),
                                  );
                                }),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          margin:
                              EdgeInsets.only(left: 15, right: 15, bottom: 10),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 9, horizontal: 11),
                            child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 2,
                                ),
                                itemCount: myProducts2.length,
                                itemBuilder: (BuildContext ctx, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff007DEF)),
                                    child: Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.white,
                                              blurRadius: 13,
                                              spreadRadius: 25)
                                        ]),
                                        margin: EdgeInsets.symmetric(
                                            vertical: 9, horizontal: 18),
                                        child: Text(
                                          myProducts2[index],
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'GB',
                                              color: Color(0xff007DEF)),
                                        )),
                                  );
                                }),
                          ),
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
