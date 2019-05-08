import 'dart:io';

import 'package:flutter/material.dart';
import 'package:istoria_romaniei/data/epoca.dart';
import 'package:istoria_romaniei/data/continut/liste.dart';
import 'package:istoria_romaniei/data/continut/strings.dart';
import 'package:istoria_romaniei/lectii.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color.fromRGBO(60, 50, 60, 1.0)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  String title = Strings.main_title;
  List<Epoca> lista = Liste.listaEpoci;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  backToMain() {
    setState(() {
      widget.lista = Liste.listaEpoci;
      widget.title = Strings.main_title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
        child: new CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: new FlexibleSpaceBar(
              background: Image.asset("maincard1.png"),
            ),
          ),
          new SliverList(

            delegate: new SliverChildBuilderDelegate((context, position) =>
            new Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              right: new BorderSide(
                                  width: 1.0,
                                  color: Colors.white24))),
                      child:
                      widget.lista[position].image,
                    ),
                    title: Text(
                      widget.lista[position].nume,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.stars,
                            color: Colors.grey),
                        Text(widget.lista[position].description,
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                    trailing: widget.lista[position].status,
                    onTap: () {
                      switch (widget.lista[position].nume) {
                        case Strings.epoca1:
                          {
                            setState(() {
                              widget.lista =
                                  Liste.listaLectiiPreistorie;
                              widget.title = Strings.e1_title;
                            });
                            debugPrint("da");
                          }
                          break;
                        case Strings.epoca2:
                          {
                            setState(() {
                              widget.lista = Liste.listaLectiiE2;
                              widget.title = Strings.e2_title;
                            });
                          }
                          break;
                        case Strings.e1_l1:
                          {
                            setState(() {
                              widget.lista = Liste.listaOptiuniLectie;
                              widget.title = Strings.e1_l1_title;
                            });
                          }
                          break;
                        case Strings.e1_l2:
                          {
                            setState(() {
                              widget.lista = Liste.listaOptiuniLectie;
                              widget.title = Strings.e1_l2_title;
                            });
                          }
                          break;
                        case Strings.e2_l1:
                          {
                            setState(() {
                              widget.lista = Liste.listaOptiuniLectie;
                              widget.title = Strings.e2_l1_title;
                            });
                          }
                          break;
                        case Strings.opt1:
                          {
                            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => Lectie(widget.title)));
                          }
                          break;
                      }
                    }



                ),),

            ),
              childCount: widget.lista.length
            ),
          ),
        ],
        ),
      ),

    );
  }
}
