import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/web.dart' as web;

import 'package:yokutsu/widget_store.dart';

final introTeksti = Text("""Tiedossa on ylioppilasjuhlat.
\nOlisiko kuitenkin parempi juhlia teidän ylioppilasjuhlianne?
\nVastatkaa nyt tietovisan kysymyksiin, joita on otettu kolme jokaisesta Oton kirjoittamasta aineesta (sekä muutama extra) ja katsokaa, osaatteko enemmän kuin tuore ylioppilas: Otto.\n
Voittajat palkitaan juhlissa!\n
Ettehän käytä apuvälineitä tai huijaa! Jokainen henkilö pelatkoon vain kerran.
""", 
  style: GoogleFonts.getFont('Lexend', color: const Color.fromRGBO(255, 244, 192, 1)),textAlign: TextAlign.center,);

class SYOpeliStart extends StatefulWidget {
  @override
  _SYOpeliStartState createState() => _SYOpeliStartState();
}

class _SYOpeliStartState extends State<SYOpeliStart> {
  @override
  void initState() {
    super.initState();
    web.document.title = 'Kutsu YO-juhliin'; // Set the page title using package:web
  }
  
  int counter = 0;
  int nextB = 0;
  int oikeat = 0;
  int vaarat = 0;
  List<int> vastauksetLog = [];
  Column testChange = Column(children: [introTeksti]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(nextB == 0) testChange,
        if(nextB == 0) IconButton(
            icon: const Icon(Icons.arrow_forward),
            color: const Color.fromARGB(255, 244, 192, 1),
            tooltip: 'Aloita',
            onPressed: () {
              setState(() {
                nextB = 1;
                Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage()));
              }
              );
            },
        )
      ]
    ); 
  }
}