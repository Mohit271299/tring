import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tring/model/user_model.dart';
import 'package:tring/screens/authentication/login.dart';
import 'package:tring/screens/initialization/project_image.dart';

class createUser extends StatefulWidget {
  const createUser({Key? key}) : super(key: key);

  @override
  _createUserState createState() => _createUserState();
}

class _createUserState extends State<createUser> {
  final _formkey = GlobalKey<FormState>();

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
    .collection("users")
    .doc(user!.uid)
    .get()
    .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {

      });
    });
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
                    child: SingleChildScrollView(
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
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Form(
                                    key: _formkey,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          decoration: BoxDecoration(
                                              color: Color(0xffCCE5FC),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          height: 51,
                                          width: 51,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: Text(
                                            'Project Logo',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 18, right: 18, top: 30),
                                          decoration: BoxDecoration(
                                            color: Color(0xffE5E5E5),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              // controller: fnameController,
                                              textAlign: TextAlign.start,
                                              decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(0.0),
                                                hintText: 'Project Name ',
                                                hintStyle: TextStyle(
                                                  color: Color(0xff828282),
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
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 18, right: 18, top: 20),
                                          decoration: BoxDecoration(
                                            color: Color(0xffE5E5E5),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              // controller: lnameController,
                                              decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(0.0),
                                                hintText: 'Mobile number',
                                                hintStyle: TextStyle(
                                                  color: Color(0xff828282),
                                                  fontSize: 12.0,
                                                ),
                                                border: InputBorder.none,
                                              ),
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 18, right: 18, top: 20),
                                          decoration: BoxDecoration(
                                            color: Color(0xffE5E5E5),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              // controller: emailController,
                                              decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(0.0),
                                                hintText: 'Email Address',
                                                hintStyle: TextStyle(
                                                  color: Color(0xff828282),
                                                  fontSize: 12.0,
                                                ),
                                                border: InputBorder.none,
                                              ),
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 18, right: 18, top: 20),
                                          decoration: BoxDecoration(
                                            color: Color(0xffE5E5E5),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              // controller: passwordController,
                                              decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(0.0),
                                                hintText: 'RERE number',
                                                hintStyle: TextStyle(
                                                  color: Color(0xff828282),
                                                  fontSize: 12.0,
                                                ),
                                                border: InputBorder.none,
                                              ),
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 18, right: 18, top: 20),
                                          decoration: BoxDecoration(
                                            color: Color(0xffE5E5E5),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              // controller: confirmpasswordController,
                                              decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(0.0),
                                                hintText: 'Confirm Password',
                                                hintStyle: TextStyle(
                                                  color: Color(0xff828282),
                                                  fontSize: 12.0,
                                                ),
                                                border: InputBorder.none,
                                              ),
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 10, top: 30,bottom: 30),
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
                                                    projectImage()));
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 30,bottom: 30, left: 10),
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
                                ),
                                GestureDetector(
                                  onTap: (){
                                    logout(context);
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        right: 10,left: 10, top: 0,bottom: 30),
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
                                        'logout',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff9d9d9d)),
                                      ),
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
                        margin: EdgeInsets.only(right: 206),
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

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const loginScreen()));
  }
}
