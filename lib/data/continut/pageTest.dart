import 'package:flutter/material.dart';
import 'package:istoria_romaniei/data/epoca.dart';
import 'package:istoria_romaniei/data/continut/liste.dart';
import 'package:istoria_romaniei/data/continut/strings.dart';

class PageTest extends StatefulWidget {
  String title;

  PageTest(this.title);
  
  int currentPage = 0;

List<Epoca> lista = Liste.listaEpoci;


  @override

  _PageTest createState() => _PageTest();
}

class _PageTest extends State<PageTest> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(120, 90, 115, 1),
     child: Row(
       children: <Widget>[
         Column(
           children: <Widget>[
             Container(child: Image.asset("p1.png"), padding: EdgeInsets.fromLTRB(30, 50, 0, 0),),
             Container(child: Image.asset("p2.png"), padding: EdgeInsets.fromLTRB(20, 60, 0, 0),),
             Expanded(child: Image.asset("p3.png")),
           ],
         ),
         Expanded(child: Container(
           child: ListView.builder(
    itemCount: widget.lista.length,
    itemBuilder: (context, position) {
    return ClipRect(

      child: Align(
        alignment: Alignment.center,
        heightFactor: 0.8,

        child: Card(
      margin: EdgeInsets.all(0),
      color: Color.fromRGBO(170, 239, 195, 1),
    child: ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Container(
        padding: EdgeInsets.all(20),
        child: Text('${widget.lista[position].nume}', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w800),),),
subtitle: Container(
    height: 20,
    width: 500,
    color: Color.fromRGBO(251, 211, 133, 1),),
      onTap: () => _onTapItem(context, widget.lista[position]),
    ),),),
    );
    },
         ),),),
         Container(
           width: 30,
         ),
       ],
     ),
    );
  }

  _onTapItem(BuildContext context, Epoca lista) {
    debugPrint("da");
  }
}