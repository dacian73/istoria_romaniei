import 'dart:io';

import 'package:flutter/material.dart';
import 'package:istoria_romaniei/data/epoca.dart';
import 'package:istoria_romaniei/data/continut/liste.dart';
import 'package:istoria_romaniei/data/continut/strings.dart';
import 'package:istoria_romaniei/meniu.dart';
import 'package:istoria_romaniei/data/continut/culori.dart';
import 'package:istoria_romaniei/lectii.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  String title = Strings.main_title;
  List<Epoca> lista = Liste.listaEpoci;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int imagine = 0;
  Image image = new Image.asset("k1.png");

  backToMain() {
    setState(() {
      widget.lista = Liste.listaEpoci;
      widget.title = Strings.main_title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new WillPopScope(
        onWillPop: () {
          switch (widget.title) {
            case Strings.main_title:
              {
                exit(0);
              }
              break;
            case Strings.e1_title:
              {
                backToMain();
              }
              break;
            case Strings.e1_l1_title:
              {
                setState(() {
                  widget.lista = Liste.listaLectiiPreistorie;
                  widget.title = Strings.e1_title;
                });
              }
              break;
            case Strings.e2_title:
              {
                backToMain();
              }
              break;
          }
        },
        child: Container(
          alignment: Alignment.topCenter,
          color: Culori.mov,
          child: Column(
            children: <Widget>[
              Container(
                child: image,
                padding: EdgeInsets.fromLTRB(0, 8, 0, 20),
              ),
              Expanded(
                  child: Stack(
                    children: <Widget>[
                      PageView.builder(
                        onPageChanged: _onPageChanged,
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.lista.length,
                        itemBuilder: (context, position) {
                          return InkWell(
                            onTap: () => _onTap(context, position),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
                              color: Culori.verde,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    child: Hero(
                                      tag: 'titluHero',
                                      child: Text(
                                        widget.lista[position].nume,
                                        style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),),
                                    padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  ),
                                  widget.lista[position].image
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      IgnorePointer(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                "s1.png",
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "s2.png",
                                alignment: Alignment.centerRight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  _onTap(BuildContext context, int position) {
    switch (position) {
      case 0:
        {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      Lectie(Liste.listaLectiiE2, Strings.e2_title)));
        }
        break;
      case 1:
        {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      Lectie(Liste.listaLectiiE3, Strings.e3_title)));
        }
        break;
      case 7:
        {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => MyMeniu()));
        }
        break;
    }
  }

  void _onPageChanged(int index) {
    switch (index) {
      case 0:
        {
          setState(() {
            image = new Image.asset("k1.png");
          });
        }
        break;
      case 1:
        {
          setState(() {
            image = new Image.asset("k2.png");
          });
        }
        break;
      case 2:
        {
          setState(() {
            image = new Image.asset("k3.png");
          });
        }
        break;
      case 3:
        {
          setState(() {
            image = new Image.asset("k4.png");
          });
        }
        break;
      default:
        {
          setState(() {
            image = new Image.asset("b1.png");
          });
        }
        break;
    }
  }
}

//Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => Lectie(widget.title)));
//                            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => PageTest(widget.title)));
//                            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => MyMeniu()));
