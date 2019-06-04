import 'dart:io';

import 'package:flutter/material.dart';
import 'package:istoria_romaniei/data/epoca.dart';
import 'package:istoria_romaniei/data/continut/liste.dart';
import 'package:istoria_romaniei/data/continut/strings.dart';
import 'package:istoria_romaniei/meniu.dart';
import 'package:istoria_romaniei/data/continut/culori.dart';
import 'package:istoria_romaniei/lectii.dart';
import 'package:istoria_romaniei/ui/cont.dart';

class Citeste extends StatefulWidget {

  String title = Strings.main_title;
  List<Epoca> lista = Liste.listaEpoci;

  @override
  _Citeste createState() => _Citeste();
}

class _Citeste extends State<Citeste> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Culori.verde,
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.lista.length,
          itemBuilder: (context, position) {
            return Container(child: Text('TEST'),);
          },
      ),),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Culori.movDeschis,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('Cont'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Învață'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Badges'),
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Culori.galben,
        onTap: _onBottomNavigationBarTap,
      ),
    );
  }

  void _onBottomNavigationBarTap(int position) {
    switch (position) {
      case 0:
        Navigator.push(context,
            new MaterialPageRoute(builder: (BuildContext context) => Cont()));
    }
  }
}
