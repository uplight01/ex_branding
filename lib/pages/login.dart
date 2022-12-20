import 'dart:html';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ex_branding/pages/home.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  late SharedPreferences preferences;
  bool loading = false;
  bool isLogedin = false;

  @override
  void iniState() {
    super.initState();
    isSignedIn();
  }

  void isSignedIn() async {
    setState(() {
      loading = true;
    });
    preferences = await SharedPreferences.getInstance();
    isLogedin = await googleSignIn.isSignedIn();

    if (isLogedin == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => homePage()));
    }
    setState(() {
      loading = false;
    });
  }

  Future handleSignIn() async {
    preferences = await SharedPreferences.getInstance();

    setState(() {
      loading = true;
    });

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication? googleSignInAuthentication = await googleUser
        ?.authentication;
    final FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    if (firebaseUser != null) {
      final QuerySnapshot result = await FirebaseFirestore.collection("users")
          .where("id", isEqualTo: firebaseUser.uid)
          .get();
    .collection("users")
        .where("id", isEqualTo: currentUser.uid)
    final List<DocumentSnapshot> documents = result.docs;
    if (documents.length == 0) {

    //===============INSERT THE USER TO MY COLLECTION===============

    FirebaseFirestore.instance
        .collection("users")
        .document(firebaseUser.uid)
        .setData({
    "id": firebaseUser.uid,
    "username": firebaseUser.displayName,
    "profilePicture": firebaseUser.photourl});

    await preferences.setString("id", firebaseUser.uid);
    await preferences.setString("username", firebaseUser.displayName);
    await preferences.setString("photoUrl", firebaseUser.displayName);
    }else{
    await preferences.setString("id", documents[0]['id']);
    await preferences.setString("username", documents[0]['username']);
    await preferences.setString("photoUrl", documents[0]['photoUrl']);
    }
    Fluttertoast.showToast(msg: "Login Successful");
    setState(() {
    loading = false;
    });
    }else{}
  }
}

@override
Widget build(BuildContext context) {
  return Container();
}}
