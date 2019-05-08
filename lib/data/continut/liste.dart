import 'package:istoria_romaniei/data/epoca.dart';
import 'package:flutter/material.dart';
import 'package:istoria_romaniei/data/continut/strings.dart';
import 'package:istoria_romaniei/data/pagina_lectie.dart';
import 'package:istoria_romaniei/data/continut/strings_text_content.dart';



class Liste{
static List<Epoca> listaEpoci = [

  new Epoca(Strings.epoca2, "descrie3re", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca3, "descrie4re", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca4, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca5, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca6, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca7, "descrie3re", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca8, "descrie4re", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca9, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Chestiunea Orientală și Țările Române", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Unirea Principatelor", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Primul Război Mondial", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("România Interbelică", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Al doilea Război Mondial", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Comunismul în România", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("România după comunism", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
];

static List<Epoca> listaLectiiPreistorie = [

];

static List<Epoca> listaLectiiE2 = [
  new Epoca(Strings.e2_l1, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Treburi", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("xiz", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),

];

static List<Epoca> listaOptiuniLectie = [
  new Epoca(Strings.opt1, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.opt2, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.opt3, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.opt4, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
];

// Continut Lectia e1_l1 = Paleolitic
  static List<PaginaLectie> listaContinutE1L1 = [
    new PaginaLectie(
        StringsTextContent.e1_l1_1_titlu, StringsTextContent.e1_l1_1, Image.asset("e1_l1_1.png")),
    new PaginaLectie(
        StringsTextContent.e1_l1_1_titlu, StringsTextContent.e1_l1_2, null),
    new PaginaLectie(
        StringsTextContent.e1_l1_1_titlu, StringsTextContent.e1_l1_3, Image.asset("e1_l1_3.png")),
    new PaginaLectie(
        StringsTextContent.e1_l1_1_titlu, StringsTextContent.e1_l1_4, null),
  ];


  // Continut Lectia e1_l2 = Epipaleolitic
  static List<PaginaLectie> listaContinutE1L2 = [
    new PaginaLectie(
        StringsTextContent.e1_l2_1_titlu, StringsTextContent.e1_l2_1, Image.asset("e1_l1_1.png")),
    new PaginaLectie(
        StringsTextContent.e1_l2_1_titlu, StringsTextContent.e1_l2_2, null),
    new PaginaLectie(
        StringsTextContent.e1_l2_1_titlu, StringsTextContent.e1_l2_3, Image.asset("e1_l1_3.png")),
    new PaginaLectie(
        StringsTextContent.e1_l2_1_titlu, StringsTextContent.e1_l2_4, null),
  ];

  // Continut Lectia e2_l1 = Tracii
  static List<PaginaLectie> listaContinutE2L1 = [
    new PaginaLectie(
        StringsTextContent.e2_l1_1_titlu, StringsTextContent.e2_l1_1, Image.asset("e1_l1_1.png")),
    new PaginaLectie(
        StringsTextContent.e2_l1_1_titlu, StringsTextContent.e2_l1_2, null),
    new PaginaLectie(
        StringsTextContent.e2_l1_1_titlu, StringsTextContent.e2_l1_3, Image.asset("e1_l1_3.png")),
    new PaginaLectie(
        StringsTextContent.e2_l1_1_titlu, StringsTextContent.e2_l1_4, null),
    
  ];
}