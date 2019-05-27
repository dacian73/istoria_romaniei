import 'package:istoria_romaniei/data/epoca.dart';
import 'package:flutter/material.dart';
import 'package:istoria_romaniei/data/continut/strings.dart';
import 'package:istoria_romaniei/data/pagina_lectie.dart';
import 'package:istoria_romaniei/data/continut/strings_text_content.dart';



class Liste{
static List<Epoca> listaEpoci = [
  new Epoca(Strings.epoca1, "descrie3re", Image.asset("cap1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca2, "descrie3re", Image.asset("cap1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca3, "descrie4re", Image.asset("cap1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca4, "descriere", Image.asset("cap1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca5, "descr5iere", Image.asset("cap1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca6, "descriere", Image.asset("cap1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca7, "descrie3re", Image.asset("cap1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca8, "descrie4re", Image.asset("cap1.png"), Image.asset("carte_inchisa.png")),
];

static List<Epoca> listaEpoci3 = [

  new Epoca("", "", Image.asset("ciucur.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca2, "descrie3re", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca3, "descrie4re", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca4, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca5, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca6, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca7, "descrie3re", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.epoca8, "descrie4re", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Chestiunea Orientală", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Unirea Principatelor", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Primul Război Mondial", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("România Interbelică", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Al doilea Război Mondial", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("Comunismul în România", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("România după comunism", "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca("", "", Image.asset("ciucur.png"), Image.asset("carte_inchisa.png")),
];

static List<Epoca> listaEpoci2 = [
  new Epoca(Strings.epoca2, "descrie3re", Image.asset("m1.png", fit: BoxFit.cover,), Image.asset("m1.png")),
  new Epoca(Strings.epoca3, "descrie4re", Image.asset("m2.png", fit: BoxFit.cover,), Image.asset("m2.png")),
  new Epoca(Strings.epoca4, "descriere", Image.asset("m3.png", fit: BoxFit.cover,), Image.asset("m3.png")),
  new Epoca(Strings.epoca5, "descr5iere", Image.asset("m4.png", fit: BoxFit.cover,), Image.asset("m4.png")),
  new Epoca(Strings.epoca6, "descriere", Image.asset("m5.png", fit: BoxFit.cover,), Image.asset("m5.png")),
  new Epoca(Strings.epoca7, "descrie3re", Image.asset("m6.png", fit: BoxFit.cover,), Image.asset("m6.png")),
  new Epoca(Strings.epoca8, "descrie4re", Image.asset("m5.png", fit: BoxFit.cover,), Image.asset("m1.png")),
  new Epoca("Chestiunea Orientală", "descr5iere", Image.asset("m1.png", fit: BoxFit.cover,), Image.asset("m6.png")),
  new Epoca("Unirea Principatelor", "descr5iere", Image.asset("m3.png", fit: BoxFit.cover,), Image.asset("m4.png")),
  new Epoca("Primul Război Mondial", "descr5iere", Image.asset("m2.png", fit: BoxFit.cover,), Image.asset("m1.png")),
  new Epoca("România Interbelică", "descr5iere", Image.asset("m4.png", fit: BoxFit.cover,), Image.asset("m3.png")),
  new Epoca("Al doilea Război Mondial", "descr5iere", Image.asset("m6.png", fit: BoxFit.cover,), Image.asset("m6.png")),
  new Epoca("Comunismul în România", "descr5iere", Image.asset("m3.png", fit: BoxFit.cover,), Image.asset("m5.png")),
  new Epoca("România după comunism", "descr5iere", Image.asset("m2.png", fit: BoxFit.cover,), Image.asset("m2.png")),
];

static List<Epoca> listaLectiiPreistorie = [

];

static List<Epoca> listaLectiiE2 = [
  new Epoca(Strings.e2_l1, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e2_l2, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e2_l3, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e2_l4, "descriere", Image.asset("e1_l1.png"), Image.asset("e1_l1.png")),
  new Epoca(Strings.e2_l5, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e2_l6, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e2_l7, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
];


static List<Epoca> listaLectiiE3 = [
  new Epoca(Strings.e3_l1, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e3_l2, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e3_l3, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e3_l4, "descriere", Image.asset("e1_l1.png"), Image.asset("e1_l1.png")),
  new Epoca(Strings.e3_l5, "descriere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e3_l6, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e3_l7, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
  new Epoca(Strings.e3_l8, "descr5iere", Image.asset("e1_l1.png"), Image.asset("carte_inchisa.png")),
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