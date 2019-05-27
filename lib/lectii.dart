
import 'package:flutter/material.dart';
import 'package:istoria_romaniei/data/continut/liste.dart';
import 'package:istoria_romaniei/data/continut/culori.dart';
import 'package:istoria_romaniei/data/epoca.dart';
import 'package:istoria_romaniei/data/continut/strings.dart';




class Lectie extends StatefulWidget {
  List<Epoca> lista;
  String title;

  Lectie(this.lista, this.title);

  int currentPage = 0;



  @override
  _Lectie createState() => _Lectie();
}

class _Lectie extends State<Lectie> {

  @override
  Widget build(BuildContext context) {

    return Material(child: Container(
      color: Color.fromRGBO(120, 90, 115, 1),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(2, 22, 2, 2),
        child: Hero(
          tag: 'titluHero',
          child: Text(
      widget.title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w900,
            fontSize: 24,
            color: Colors.white),
      ),),),
              Container(
                child: Image.asset("p1.png"),
                padding: EdgeInsets.fromLTRB(30, 50, 0, 0),
              ),
              Container(
                child: Image.asset("p2.png"),
                padding: EdgeInsets.fromLTRB(20, 60, 0, 0),
              ),
              Expanded(child: Image.asset("p3.png")),
            ],
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: widget.lista.length,
                itemBuilder: (context, position) {
                  return CustomListItem(
                    nume: widget.lista[position].nume,
                    position: position,
                    lastItem: widget.lista.length,
                  );
                },
              ),
            ),
          ),
          Container(
            width: 30,
          ),
        ],
      ),
    ),);
  }
}

class CustomListItem extends StatelessWidget {
  
  
  const CustomListItem({
    this.nume,
    this.position,
    this.lastItem,
  });

  final String nume;
  final int position;
  final int lastItem;

  @override
  Widget build(BuildContext context) {
    
    if (position != (lastItem - 1)) {
      return Padding(
        padding: EdgeInsets.all(0),
        child: Material(
            child: InkWell(
              onTap: () {

              },
          child: Container(
            color: Culori.verde,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 80,
                  width: 200,
                  color: Culori.verde,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 30, 8, 0),
                    child: Text(
                      nume,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Culori.galben,
                          ),
                          Text(Strings.invata, style: TextStyle(color: Culori.alb),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Culori.galben,
                          ),
                          Text(Strings.test, style: TextStyle(color: Culori.alb),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Culori.galben,
                          ),
                          Text(Strings.print, style: TextStyle(color: Culori.alb),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Culori.galben,
                          ),
                          Text(Strings.share, style: TextStyle(color: Culori.alb),),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: 20,
                    color: Culori.galben,
                  ),
                ),
              ],
            ),
          ),
        )),
      );
    } else
      return Container(
        margin: EdgeInsets.all(0),
        child: Image.asset(
          "ciucur.png",
          alignment: Alignment.topCenter,
        ),
      );
  }
//
//  _onTapItem(BuildContext context, int position) {
//    switch (position) {
//      case 0:
//        {
//          Navigator.push(
//              context,
//              new MaterialPageRoute(
//                  builder: (BuildContext context) =>
//                      Lectie(Liste.listaLectiiE2)));
//        }
//        break;
//      case 1:
//        {
//          Navigator.push(
//              context,
//              new MaterialPageRoute(
//                  builder: (BuildContext context) =>
//                      Lectie(Liste.listaLectiiE3)));
//        }
//        break;
//    }
//  }
}


