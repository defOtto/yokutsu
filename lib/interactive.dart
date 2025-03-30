import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;


final kysymykset = [
  "Kun lapsen jalat koskettavat alastulossa trampoliinin pintaa, trampoliini alkaa hidastaa lapsen vauhtia. Mikä seuraavista väittämistä pätee tilanteessa?", 
  "Valitse sopivin rakennemalli päänäkökulmalle: Somepaasto parantaa elämänlaatua.",
  "Valitse välimerkki: Valmennuksiin kuuluu pelitekniikan hiomisen lisäksi monia muitakin asioita __ pelaajat harjoittelevat esimerkiksi tiimitaitoja ja saavat henkistä valmennusta, jotta he kestävät kilpailupaineet.",
  "Väite ”Yksikään aviopuoliso ei ole naimaton” ilmaisee Immanuel Kantin mukaan",
  "Funktion derivaatan arvo kertoo …",
  "Mitkä arvot lukujono tuottaa?",
  "Täytä tyhjä: Interaction competence is developed through the _____ working methods and techniques of physical education.",
  "Kahden vektorin pistetulo on aina",
  "Valitse se järjestys, jossa tekstilajit on järjestetty vaikuttavimmasta informatiivisimpaan.",
  "Katuporan äänen intensiteettitaso 10 metrin etäisyydellä porasta on 100 dB. Kuinka suuri on kahden katuporan yhdessä tuottaman äänen intensiteettitaso samalla etäisyydellä?",
  "Mikä lause kuuluu tyhjään kohtaan?",
  "Mikä sana tulee tyhjään kohtaan: 2016 konnte ich einen Monat als Gastschüler in Finnland verbringen. Mir hat es hier gleich sehr gut",
  "Kahdesta käämistä koostuvalla muuntajalla muutetaan",
  "Täytä tyhjä: _______ tarkoittaa jonkin teorian tai väitteen kumoamista tai osoittamista vääräksi.",
  "What is the environment like in the novel:",
  "Valitse vastaavin vaihtoehto alleviivatulle sanalle: For centuries Western culture has been permeated by the idea that humans are selfish creatures. ",
  "Millainen päätelmä on: Jos Musti on kala, se osaa hengittää veden alla. Musti ei osaa hengittää veden alla, siispä se ei ole kala.",
  "Mikä sana tulee tyhjään kohtaan: Lennart, 17, aus Berlin erzählt über sein Hobby: „Beatboxer kennen ____ unter dem Namen Lennsi. [...]”",
  "Ympäristön aiheuttama fenotyypin muuntelu eli muovautumismuuntelu auttaa eliöitä sopeutumaan monenlaisiin elinympäristöihin. Mikä seuraavista vaihtoehdoista kuvaa parhaitenmuovautumismuuntelua?",
  "Valitse oikea vaihtoehto: Många lägger timmar på att läsa på när de ska köpa en bil, men tror att det ska gå på fem minuter att välja utbildning. Låt det få ta __"
  ];
final vastauksetA = [
  "Lapsi kohdistaa trampoliiniin suuremman voiman kuin trampoliini lapseen.", 
  "ongelmanratkaisujärjestys",
  ":",
  "analyyttistä apriorista tietoa.",
  "funktion suurimman arvon",
  "(1, 2, 3, 4, …)",
  "diversifying",
  "Kokonaisluku",
  "Uutisanalyysi, kommentti, artikkeli, pakina",
  "110 dB",
  "ob sie vielleicht Lust hat",
  "gefielt",
  "tasajännitteen suuruutta",
  "Deduktio",
  "Chaotic",
  "complicated",
  "Analogiapäätelmä",
  "mir",
  "Muovautumismuuntelu on erityisen tyypillistä nisäkkäille.",
  "tid",
  ];
final vastauksetB = [
  "Lapsi ja trampoliini eivät kohdista voimaa toisiinsa.", 
  "argumentointijärjestys",
  ";",
  "synteettistä apriorista tietoa",
  "funktion maksimikohdan",
  "(1, 3, 5, 7, …)",
  "diverted",
  "Reaaliluku",
  "Pakina, artikkeli, uutisanalyysi, kommentti",
  "103 dB",
  "passt sie gut zusammen",
  "gefallen",
  "vaihtojännitteen suuruutta",
  "Demarkaatio",
  "Vibrant",
  "invaded",
  "Ehdollinen(hypoteettinen) syllogismi",
  "mein",
  "Muovautumismuuntelun takia genotyypiltään samanlaiset eliöt voivat olla erinäköisiä.",
  "slut"
  ];
final vastauksetC = [
  "Lapsi kohdistaa trampoliiniin pienemmän voiman kuin trampoliini lapseen.", 
  "vertailujärjestys",
  ",",
  "synteettistä aposteriorista tietoa.",
  "funktion kuvaajan tangentin kulmakertoimen",
  "(2, 4, 6, 8, …)",
  "diverse",
  "Vektori",
  "Uutisanalyysi, artikkeli, pakina, kommentti",
  "200 dB",
  "dass sie mich auch gut findet",
  "gefällt",
  "vaihtojännitteen taajuutta",
  "Falsifointi",
  "Tranquil",
  "tarnished",
  "Käytännöllinen(praktinen) syllogismi",
  "mich",
  "Geenien eri alleelit aiheuttavat muovautumismuuntelun.",
  "plats",
  ];
final vastauksetD = [
  "Lapsi ja trampoliini kohdistavat toisiinsa saman suuruiset voimat.", 
  "aikajärjestys",
  "Placeholder",
  "Placeholder",
  "funktion kuvaajan ja x-akselin välisen alueen pinta-alan",
  "(2, 4, 8, 16, …)",
  "pp",
  "suora",
  "Artikkeli, uutisanalyysi, kommentti, pakina",
  "141 dB",
  "was passiert auch leicht",
  "placheholder",
  "placheholder",
  "Paradigma",
  "Paradigma",
  "Takajäsenen kielto, modus tollens",
  "Takajäsenen kielto, modus tollens",
  "Takajäsenen kielto, modus tollens",
  "Identtisten kaksosten samanlainen fenotyyppi johtuu muovautumismuuntelusta.",
  "Identtisten kaksosten samanlainen fenotyyppi johtuu muovautumismuuntelusta."
  ];

final imgNames = [
  "q13.png", 
  "YOlakkisuora.webp",
  "YOlakkisuora.webp",
  "YOlakkisuora.webp",
  "q8.png",
  "q8.png",
  "q8.png",
  "q8.png",
  "q9.png",
  "q9.png",
  "q11.png",
  "q11.png",
  "q11.png",
  "q11.png",
  "q3.png",
  "q3.png",
  "q3.png",
  "q3.png",
  "q3.png",
  "q3.png",
  ];
final imgSizesh = [
  505.0,
  0.0,
  0.0,
  0.0,
  0.0,
  30.0,
  0.0,
  0.0,
  71.0,
  0.0,
  123.0,
  0.0,
  0.0,
  0.0,
  250.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
 ];
final imgSizesw = [
  271.0, 
  0.0,
  0.0,
  0.0,
  0.0,
  318.0,
  0.0,
  0.0,
  915.0,
  0.0,
  647.0,
  0.0,
  0.0,
  0.0,
  558.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
];

final options = [4, 4, 3, 3, 4, 4, 3, 4, 4, 4, 4, 3, 3, 4, 3, 3, 4, 3, 4, 3];

final vastauksetOikea = [4, 2, 1, 1, 3, 3, 3, 2, 4, 2, 3, 2, 2, 3, 3, 2, 4, 3, 2, 1];

final introTeksti = Text("""Tiedossa on ylioppilasjuhlat.
\nOlisiko kuitenkin parempi juhlia teidän ylioppilasjuhlianne?
\nVastatkaa nyt tietovisan kysymyksiin, joita on otettu kolme jokaisesta Oton kirjoittamasta aineesta (sekä muutama extra) ja katsokaa, osaatteko enemmän kuin tuore ylioppilas: Otto.\n
Voittajat palkitaan juhlissa!\n
Ettehän käytä apuvälineitä tai huijaa! Jokainen pelatkoon vain kerran.
""", 
  style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 255, 255)),textAlign: TextAlign.center,);

int counter = 0;

class SYOpeli extends StatefulWidget {
  @override
  _SYOpeliState createState() => _SYOpeliState();
}

class _SYOpeliState extends State<SYOpeli> {
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
      if(counter == -100) IconButton(onPressed: null, icon: const Icon(Icons.downloading_outlined), tooltip: "lolo",),
        if(nextB == 0) testChange,
        if(nextB == 0) IconButton(
            icon: const Icon(Icons.arrow_forward),
            color: const Color.fromARGB(255, 255, 255, 255),
            tooltip: 'Aloita',
            onPressed: () {
              setState(() {
                nextB = 1;
              });
            },
        ),
        if(nextB == 1 && counter < 20) Column(
            children: [
              Text(kysymykset[counter], 
              style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 255, 255)), softWrap: true, textAlign: TextAlign.center,
              ),
              Image(image: AssetImage('assets/images/' + imgNames[counter]), height: imgSizesh[counter], width: imgSizesw[counter],),
              ElevatedButton(onPressed: (){
                setState(() {
                  if (vastauksetOikea[counter] == 1){oikeat++;}
                  else{vaarat++;}
                  counter++;
                  vastauksetLog.add(1);
                  });},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Adjust the radius
              )), child: Text(vastauksetA[counter])
              ),
              SizedBox(height: 10),
              if(options[counter] > 1) ElevatedButton(
                onPressed: (){
                setState(() {
                  if (vastauksetOikea[counter] == 2){oikeat++;}
                  else{vaarat++;}
                  counter++;
                  vastauksetLog.add(2);
                  });}, 
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
                  child: Text(vastauksetB[counter])), // Adjust the radius,
              if(options[counter] > 1) SizedBox(height: 10),
              if(options[counter] > 2) ElevatedButton(onPressed: (){
                setState(() {
                  if (vastauksetOikea[counter] == 3){oikeat++;}
                  else{vaarat++;}
                  counter++;
                  vastauksetLog.add(3);
                  });}, 
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
                  child: Text(vastauksetC[counter])),
              if(options[counter] > 2)SizedBox(height: 10),
              if(options[counter] > 3)ElevatedButton(onPressed:  (){
                setState(() {
                  if (vastauksetOikea[counter] == 4){oikeat++;}
                  else{vaarat++;}
                  counter++;
                  vastauksetLog.add(4);
                  });}, 
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
                  child: Text(vastauksetD[counter])),
              SizedBox(height: 10),
              Row(children: [
                Text(oikeat.toString(), style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 0, 255, 42), fontWeight: FontWeight.bold)),
                SizedBox(width: 5),
                Text((counter+1).toString()+'/20', style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 255, 255)),),
                SizedBox(width: 5),
                Text(vaarat.toString(), style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 0, 0), fontWeight: FontWeight.bold)),
                ], mainAxisAlignment: MainAxisAlignment.center,),
              SizedBox(height: 10),
            ],

          ),
        if(nextB == 1 && counter >= 20 && oikeat > 16)
        Column(children: [
          Text('Ehdottomasti!', style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 255, 255))),
          Text('Saitte ' + oikeat.toString() + ' oikein. Se on ' + (oikeat-16).toString() + ' enemmän kuin ylioppilas Otto. Erinomainen suoritus!\nTodistus:', style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 255, 255)),  textAlign: TextAlign.center),
          Image(image: AssetImage('assets/images/yli-ylioppilastodistus.png'), height: 300, width: 300,),
          SizedBox(height: 5),
          IconButton(onPressed: downloadFileMax, icon: const Icon(Icons.arrow_forward), color: const Color.fromARGB(255, 255, 255, 255), tooltip: 'Lataa',),
          SizedBox(height: 10),
        ],),
        if(nextB == 1 && counter >= 20 && oikeat == 16)
        Column(children: [
          Text('Ehkäpä!', style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 255, 255))),
          Text('Saitte 16 oikein. Se on yhtä paljon, kuin ylioppilas Otolla. Hyvää työtä!\nTodistus:', style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 255, 255)), textAlign: TextAlign.center),
          Image(image: AssetImage('assets/images/ylioppilastodistus.png'), height: 519, width: 519,),
          SizedBox(height: 5),
          IconButton(onPressed: downloadFileNorm, icon: const Icon(Icons.arrow_forward), color: const Color.fromARGB(255, 255, 255, 255), tooltip: 'Lataa',),
          SizedBox(height: 10),
        ],),
        if(nextB == 1 && counter >= 20 && oikeat < 16)
        Column(children: [
          Text('Ei aivan!', style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 255, 255))),
          Text('Saitte ' + oikeat.toString() + ' oikein. Se on ' + (16-oikeat).toString() + ' vähemmän kuin ylioppilas Otto. Hyvä yritys!', style: GoogleFonts.getFont('Lexend', color: const Color.fromARGB(255, 255, 255, 255)), textAlign: TextAlign.center,),
        ],),
      ],
    );
  }

  void downloadFileMax() {
    final anchor1 = html.AnchorElement(href: 'ssets/images/yli-ylioppilastodistus.png') // Replace with your file URL
      ..setAttribute('download', 'yli-ylioppilastodistus.png') // Replace with desired filename
      ..click();
  }
  void downloadFileNorm() {
    final anchor2 = html.AnchorElement(href: 'assets/images/ylioppilastodistus.png') // Replace with your file URL
      ..setAttribute('download', 'ylioppilastodistus.png') // Replace with desired filename
      ..click();
  }
}
