import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:istoria_romaniei/data/epoca.dart';
import 'package:istoria_romaniei/data/continut/liste.dart';
import 'package:istoria_romaniei/data/continut/strings.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:istoria_romaniei/meniu.dart';
import 'package:istoria_romaniei/data/continut/culori.dart';
import 'package:istoria_romaniei/lectii.dart';
import 'package:istoria_romaniei/ui/login.dart';
import 'package:istoria_romaniei/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Culori.mov),
      home: MySplashScreen(),
    );
  }
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreen createState() => _MySplashScreen();
}

class _MySplashScreen extends State<MySplashScreen> {


  Widget _handleCurrentScreen() {
    return new StreamBuilder<FirebaseUser>(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return new WaitingScreen();
          } else {
            if (snapshot.hasData) {
              return new MyHomePage();
            }
            return new LoginWithFirebaseAuth();
          }
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 1,
          navigateAfterSeconds: _handleCurrentScreen(),
          backgroundColor: Colors.white,
          photoSize: 100.0,
          onClick: () => print("Splash Screen was clicked"),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("splash1.gif"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class WaitingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("Waiting to load");
  }

}


