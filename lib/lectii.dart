import 'package:flutter/material.dart';
import 'package:istoria_romaniei/data/continut/liste.dart';
import 'package:istoria_romaniei/data/pagina_lectie.dart';
import 'package:istoria_romaniei/data/continut/strings.dart';

class Lectie extends StatefulWidget {
  String title;

  Lectie(this.title);
  List<PaginaLectie> lista;
  int currentPage = 0;




  @override

  _Lectie createState() => _Lectie();
}

class _Lectie extends State<Lectie> {

  nextPage() {
    setState(() {
      if (widget.currentPage < (widget.lista.length - 1)) {
        widget.currentPage++;
      }
    });
  }

  previousPage() {
    setState(() {
      if (widget.currentPage > 0) {
        widget.currentPage--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.title) {
      case Strings.e1_l1_title: {
        widget.lista = Liste.listaContinutE1L1;
      } break;
      case Strings.e1_l2_title: {
        widget.lista = Liste.listaContinutE1L2;
      } break;
      case Strings.e2_l1_title: {
        widget.lista = Liste.listaContinutE2L1;
      } break;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.title,
              ),
              Container(
                child: widget.lista[widget.currentPage].imagine,
              ),
              Row(
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.red,
                    child: Icon(Icons.navigate_before, color: Colors.black),
                    onTap: () {
                      previousPage();
                    },
                  ),
                  Expanded(
                    child: Text(widget.lista[widget.currentPage].text),
                  ),
                  InkWell(
                    splashColor: Colors.red,
                    child: Icon(Icons.navigate_next, color: Colors.black),
                    onTap: () {
                      nextPage();
                    },
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
