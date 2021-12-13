import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class add_customerScreen extends StatefulWidget {

  @override
  _add_customerScreenState createState() => _add_customerScreenState();
}

class _add_customerScreenState extends State<add_customerScreen> {
  var list_tasks = <String>[
    'Follow Ups',
    'Phone Call',
    'Site Visit',
    'Meeting'
  ];
  var _user;
  late DateTime _selectedDate;
  TextEditingController dateinput = TextEditingController();
  TextEditingController mrgdateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    mrgdateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff007DEF),
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 25),
                          child: Text(
                            'Add Contact / Customer',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'GR',

                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          margin:
                          EdgeInsets.only(left: 20, right: 20, top: 15),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(
                                        top: 15, bottom: 15, left: 15),
                                    child: Text('Basic Info',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            fontFamily: 'GR'))),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: Container(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent,
                                                width: 1.0),
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                          ),
                                          contentPadding: EdgeInsets.only(left: 12,top: 20),
                                          labelText: 'First Name',
                                          labelStyle: TextStyle(
                                            fontFamily: 'GR',
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff9d9d9d),
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff0B0D16),
                                          fontSize: 14.0,
                                        ),
                                        textAlign: TextAlign.start,
                                        // controller: flat_tower_controller[index],
                                        autofocus: false,
                                      ),
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Last Name',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.number,
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Mobile No',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.number,
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Email Id',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.emailAddress,
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Company/Business Name',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.number,
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Bussiness Type',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.number,
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: "Phone Number",
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.number,
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Alternate Mobile No',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.number,
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Fax',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.number,
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Website',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.url,
                                    )
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 18, right: 18, bottom: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xfff3f3f3),
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Expanded(
                                                child: TextFormField(
                                                  controller: dateinput,
                                                  decoration:
                                                  const InputDecoration(
                                                    contentPadding:
                                                    EdgeInsets.only(
                                                        top: 5, left: 12),
                                                    labelText: 'Birth Date',
                                                    labelStyle: TextStyle(
                                                      color:
                                                      Color(0xff9d9d9d),
                                                      fontSize: 12.0,
                                                    ),
                                                    border: InputBorder.none,
                                                  ),
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xff0B0D16),
                                                      fontFamily: 'GR',
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: ()async {
                                                  DateTime? pickedDate = await showDatePicker(
                                                      context: context, initialDate: DateTime.now(),
                                                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                      lastDate: DateTime(2101)
                                                  );

                                                  if(pickedDate != null ){
                                                    print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                                                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                                    //you can implement different kind of Date Format here according to your requirement
                                                    setState(() {
                                                      dateinput.text = formattedDate; //set output date to TextField value.
                                                    });
                                                  }else{
                                                    print("Date is not selected");
                                                  }
                                                },
                                                child: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 12),
                                                  child: SvgPicture.asset(
                                                    'assets1/Vector_calendar.svg',
                                                    height: 20,
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 19,
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xfff3f3f3),
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Flexible(
                                                child: TextFormField(
                                                  controller: mrgdateinput,
                                                  decoration:
                                                  const InputDecoration(
                                                    contentPadding:
                                                    EdgeInsets.only(
                                                        top: 5, left: 12),
                                                    labelText: 'Marriage Date',
                                                    labelStyle: TextStyle(
                                                      color:
                                                      Color(0xff9d9d9d),
                                                      fontSize: 12.0,
                                                    ),
                                                    border: InputBorder.none,
                                                  ),
                                                  style:TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xff0B0D16),
                                                      fontFamily: 'GR',
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: ()async {
                                                  DateTime? pickedDate = await showDatePicker(
                                                      context: context, initialDate: DateTime.now(),
                                                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                      lastDate: DateTime(2101)
                                                  );

                                                  if(pickedDate != null ){
                                                    print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                                                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                                    //you can implement different kind of Date Format here according to your requirement
                                                    setState(() {
                                                      mrgdateinput.text = formattedDate; //set output date to TextField value.
                                                    });
                                                  }else{
                                                    print("Date is not selected");
                                                  }
                                                },
                                                child: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 12),
                                                  child: SvgPicture.asset(
                                                    'assets1/Vector_calendar.svg',
                                                    height: 20,
                                                    width: 20,
                                                  ),
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
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 15),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Social media account links',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.url,
                                    )
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          margin:
                          EdgeInsets.only(left: 20, right: 20, top: 15),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(
                                        top: 15, bottom: 15, left: 15),
                                    child: Text('For office use',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            fontFamily: 'GR'))),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: Container(
                                      height: 44,
                                      child: FormField<String>(
                                        builder: (FormFieldState<String> state) {
                                          return InputDecorator(
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.symmetric(
                                                  horizontal: 20.0, vertical: 15.0),
                                              border:
                                              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                                            ),
                                            child:DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                                dropdownColor: Colors.transparent,
                                                iconEnabledColor: Color(0xff007DEF),
                                                elevation: 12,
                                                iconSize: 14,
                                                underline: SizedBox(),
                                                value: _user == null ? null : list_tasks[_user],
                                                selectedItemBuilder: (BuildContext context) {
                                                  return list_tasks.map<Widget>((String value) {
                                                    return Container(
                                                        alignment: Alignment.center,
                                                        child: Text(value,
                                                            style: TextStyle(
                                                              fontFamily: 'GR',
                                                              fontWeight: FontWeight.w600,
                                                              color: Color(0xff9d9d9d),
                                                              fontSize: 12.0,)));
                                                  }).toList();
                                                },
                                                items: list_tasks.map((String value) {
                                                  return DropdownMenuItem<String>(
                                                    child: Container(
                                                      margin: EdgeInsets.symmetric(
                                                          vertical: 3, horizontal: 5),
                                                      decoration: BoxDecoration(
                                                          color: Color(0xfff3f3f3),
                                                          borderRadius: BorderRadius.circular(8)),
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 5, top: 12, bottom: 12),
                                                        width: MediaQuery.of(context).size.width,
                                                        child: Text(
                                                          value,
                                                          style: TextStyle(
                                                            fontFamily: 'GR',
                                                            fontWeight: FontWeight.w600,
                                                            color: Color(0xff9d9d9d),
                                                            fontSize: 12.0,),
                                                        ),
                                                      ),
                                                    ),
                                                    value: value,
                                                  );
                                                }).toList(),
                                                onChanged: (value) {
                                                  setState(() {
                                                    _user = list_tasks.indexOf(value!);
                                                  });
                                                  print(_user);
                                                },
                                                hint: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: Text(
                                                    "Load Owner",
                                                    style: TextStyle( fontFamily: 'GR',
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff9d9d9d),
                                                      fontSize: 12.0,),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffF3F3F3),
                                      borderRadius:
                                      BorderRadius.circular(10)),
                                  margin: EdgeInsets.only(
                                      left: 18, right: 18, bottom: 10),
                                  child: Container(
                                    height: 44,
                                    child: FormField<String>(
                                      builder: (FormFieldState<String> state) {
                                        return InputDecorator(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal: 20.0, vertical: 15.0),
                                            border:
                                            OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                                          ),
                                          child:DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                              dropdownColor: Colors.transparent,
                                              iconEnabledColor: Color(0xff007DEF),
                                              elevation: 12,
                                              iconSize: 14,
                                              underline: SizedBox(),
                                              value: _user == null ? null : list_tasks[_user],
                                              selectedItemBuilder: (BuildContext context) {
                                                return list_tasks.map<Widget>((String value) {
                                                  return Container(
                                                      alignment: Alignment.center,
                                                      child: Text(value,
                                                          style: TextStyle(
                                                            fontFamily: 'GR',
                                                            fontWeight: FontWeight.w600,
                                                            color: Color(0xff9d9d9d),
                                                            fontSize: 12.0,)));
                                                }).toList();
                                              },
                                              items: list_tasks.map((String value) {
                                                return DropdownMenuItem<String>(
                                                  child: Container(
                                                    margin: EdgeInsets.symmetric(
                                                        vertical: 3, horizontal: 5),
                                                    decoration: BoxDecoration(
                                                        color: Color(0xfff3f3f3),
                                                        borderRadius: BorderRadius.circular(8)),
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 5, top: 12, bottom: 12),
                                                      width: MediaQuery.of(context).size.width,
                                                      child: Text(
                                                        value,
                                                        style: TextStyle(
                                                          fontFamily: 'GR',
                                                          fontWeight: FontWeight.w600,
                                                          color: Color(0xff9d9d9d),
                                                          fontSize: 12.0,),
                                                      ),
                                                    ),
                                                  ),
                                                  value: value,
                                                );
                                              }).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  _user = list_tasks.indexOf(value!);
                                                });
                                                print(_user);
                                              },
                                              hint: Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "Load Source",
                                                  style: TextStyle( fontFamily: 'GR',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff9d9d9d),
                                                    fontSize: 12.0,),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),

                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    margin: EdgeInsets.only(
                                        left: 18, right: 18, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
                                        labelText: 'Sales Person',
                                        labelStyle: TextStyle(
                                          fontFamily: 'GR',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9d9d9d),
                                          fontSize: 12.0,
                                        ),
                                      ),

                                      style: const TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0B0D16),
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      // controller: flat_tower_controller[index],
                                      autofocus: false,
                                      keyboardType: TextInputType.number,
                                    )),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffF3F3F3),
                                      borderRadius:
                                      BorderRadius.circular(10)),
                                  margin: EdgeInsets.only(
                                      left: 18, right: 18, bottom: 10),
                                  child: Container(
                                    height: 44,
                                    child: FormField<String>(
                                      builder: (FormFieldState<String> state) {
                                        return InputDecorator(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal: 20.0, vertical: 15.0),
                                            border:
                                            OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                                          ),
                                          child:DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                              dropdownColor: Colors.transparent,
                                              iconEnabledColor: Color(0xff007DEF),
                                              elevation: 12,
                                              iconSize: 14,
                                              underline: SizedBox(),
                                              value: _user == null ? null : list_tasks[_user],
                                              selectedItemBuilder: (BuildContext context) {
                                                return list_tasks.map<Widget>((String value) {
                                                  return Container(
                                                      alignment: Alignment.center,
                                                      child: Text(value,
                                                          style: TextStyle(
                                                            fontFamily: 'GR',
                                                            fontWeight: FontWeight.w600,
                                                            color: Color(0xff9d9d9d),
                                                            fontSize: 12.0,)));
                                                }).toList();
                                              },
                                              items: list_tasks.map((String value) {
                                                return DropdownMenuItem<String>(
                                                  child: Container(
                                                    margin: EdgeInsets.symmetric(
                                                        vertical: 3, horizontal: 5),
                                                    decoration: BoxDecoration(
                                                        color: Color(0xfff3f3f3),
                                                        borderRadius: BorderRadius.circular(8)),
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 5, top: 12, bottom: 12),
                                                      width: MediaQuery.of(context).size.width,
                                                      child: Text(
                                                        value,
                                                        style: TextStyle(
                                                          fontFamily: 'GR',
                                                          fontWeight: FontWeight.w600,
                                                          color: Color(0xff9d9d9d),
                                                          fontSize: 12.0,),
                                                      ),
                                                    ),
                                                  ),
                                                  value: value,
                                                );
                                              }).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  _user = list_tasks.indexOf(value!);
                                                });
                                                print(_user);
                                              },
                                              hint: Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "Load Owner",
                                                  style: TextStyle( fontFamily: 'GR',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff9d9d9d),
                                                    fontSize: 12.0,),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffF3F3F3),
                                      borderRadius:
                                      BorderRadius.circular(10)),
                                  margin: EdgeInsets.only(
                                      left: 18, right: 18, bottom: 10),
                                  child: Container(
                                    height: 44,
                                    child: FormField<String>(
                                      builder: (FormFieldState<String> state) {
                                        return InputDecorator(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal: 20.0, vertical: 15.0),
                                            border:
                                            OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                                          ),
                                          child:DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                              dropdownColor: Colors.transparent,
                                              iconEnabledColor: Color(0xff007DEF),
                                              elevation: 12,
                                              iconSize: 14,
                                              underline: SizedBox(),
                                              value: _user == null ? null : list_tasks[_user],
                                              selectedItemBuilder: (BuildContext context) {
                                                return list_tasks.map<Widget>((String value) {
                                                  return Container(
                                                      alignment: Alignment.center,
                                                      child: Text(value,
                                                          style: TextStyle(
                                                            fontFamily: 'GR',
                                                            fontWeight: FontWeight.w600,
                                                            color: Color(0xff9d9d9d),
                                                            fontSize: 12.0,)));
                                                }).toList();
                                              },
                                              items: list_tasks.map((String value) {
                                                return DropdownMenuItem<String>(
                                                  child: Container(
                                                    margin: EdgeInsets.symmetric(
                                                        vertical: 3, horizontal: 5),
                                                    decoration: BoxDecoration(
                                                        color: Color(0xfff3f3f3),
                                                        borderRadius: BorderRadius.circular(8)),
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 5, top: 12, bottom: 12),
                                                      width: MediaQuery.of(context).size.width,
                                                      child: Text(
                                                        value,
                                                        style: TextStyle(
                                                          fontFamily: 'GR',
                                                          fontWeight: FontWeight.w600,
                                                          color: Color(0xff9d9d9d),
                                                          fontSize: 12.0,),
                                                      ),
                                                    ),
                                                  ),
                                                  value: value,
                                                );
                                              }).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  _user = list_tasks.indexOf(value!);
                                                });
                                                print(_user);
                                              },
                                              hint: Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "Load Owner",
                                                  style: TextStyle( fontFamily: 'GR',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff9d9d9d),
                                                    fontSize: 12.0,),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffF3F3F3),
                                      borderRadius:
                                      BorderRadius.circular(10)),
                                  margin: EdgeInsets.only(
                                      left: 18, right: 18, bottom: 10),
                                  child: Container(
                                    height: 44,
                                    child: FormField<String>(
                                      builder: (FormFieldState<String> state) {
                                        return InputDecorator(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal: 20.0, vertical: 15.0),
                                            border:
                                            OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                                          ),
                                          child:DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                              dropdownColor: Colors.transparent,
                                              iconEnabledColor: Color(0xff007DEF),
                                              elevation: 12,
                                              iconSize: 14,
                                              underline: SizedBox(),
                                              value: _user == null ? null : list_tasks[_user],
                                              selectedItemBuilder: (BuildContext context) {
                                                return list_tasks.map<Widget>((String value) {
                                                  return Container(
                                                      alignment: Alignment.center,
                                                      child: Text(value,
                                                          style: TextStyle(
                                                            fontFamily: 'GR',
                                                            fontWeight: FontWeight.w600,
                                                            color: Color(0xff9d9d9d),
                                                            fontSize: 12.0,)));
                                                }).toList();
                                              },
                                              items: list_tasks.map((String value) {
                                                return DropdownMenuItem<String>(
                                                  child: Container(
                                                    margin: EdgeInsets.symmetric(
                                                        vertical: 3, horizontal: 5),
                                                    decoration: BoxDecoration(
                                                        color: Color(0xfff3f3f3),
                                                        borderRadius: BorderRadius.circular(8)),
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 5, top: 12, bottom: 12),
                                                      width: MediaQuery.of(context).size.width,
                                                      child: Text(
                                                        value,
                                                        style: TextStyle(
                                                          fontFamily: 'GR',
                                                          fontWeight: FontWeight.w600,
                                                          color: Color(0xff9d9d9d),
                                                          fontSize: 12.0,),
                                                      ),
                                                    ),
                                                  ),
                                                  value: value,
                                                );
                                              }).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  _user = list_tasks.indexOf(value!);
                                                });
                                                print(_user);
                                              },
                                              hint: Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "Load Owner",
                                                  style: TextStyle( fontFamily: 'GR',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff9d9d9d),
                                                    fontSize: 12.0,),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 18, right: 18, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xfff3f3f3),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: TextField(
                                    maxLines: 7,
                                    decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      border: InputBorder.none,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 1.0),
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      labelText: 'Description Information',
                                      labelStyle: TextStyle(
                                        fontFamily: 'GR',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff9d9d9d),
                                        fontSize: 12.0,
                                      ),
                                    ),

                                    style: const TextStyle(
                                      fontFamily: 'GR',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff0B0D16),
                                      fontSize: 14.0,
                                    ),
                                    textAlign: TextAlign.start,
                                    // controller: flat_tower_controller[index],
                                    autofocus: false,
                                  )
                                ),


                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          margin:
                          EdgeInsets.symmetric(vertical: 26,horizontal: 20),
                          child: Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff007def),
                                  borderRadius: BorderRadius.circular(10)),
                              margin: EdgeInsets.only(top: 13,bottom: 13,left: 115,right: 112),
                              child: Container(
                                  margin: EdgeInsets.only(left: 27,right: 30,top: 11,bottom: 11),
                                  child: Text('Save',style: TextStyle(color: Color(0xffffffff),fontSize: 15,fontFamily: 'GR',fontWeight: FontWeight.w600),)),
                            ),
                          ),
                        ),
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
