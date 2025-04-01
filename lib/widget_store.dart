// my_widgets.dart

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yokutsu/intrHome.dart';
import 'interactive.dart';

const Color textCLR = Color.fromRGBO(255, 244, 192, 1);

// ANCHOR Yläosio
final tervetuloToivotus = Text(
  'Teidät on toivotettu tervetulleiksi',
  style: GoogleFonts.getFont(
    'Martel',
    fontSize: 34,
    fontWeight: FontWeight.normal,
    color: textCLR,
  ),
);

final lakkiKuva = Image.asset(
  'assets/images/YOlakkisuora.webp',
  width: 40,
  height: 40,
);

final lakkiKuvaIso = Image.asset(
  'assets/images/YOlakkiisometric.png',
  width: 40,
  height: 40,
);

final komitea = FittedBox(
  fit: BoxFit.scaleDown,
  child: Row(
    children: [lakkiKuva, tervetuloToivotus, lakkiKuvaIso],
    mainAxisAlignment: MainAxisAlignment.center,
  ),
);

final kaunisTeksti = Text(
  'Oton ylioppilasjuhlaan',
  style: GoogleFonts.getFont(
    'Mea Culpa',
    fontSize: 45,
    color: const Color.fromRGBO(255, 223, 0, 1),
  ),
);

final sijaintiLogo = Icon(
  Icons.pin_drop_outlined,
  size: 48,
  color: textCLR,
);

final aikaLogo = Icon(
  Icons.calendar_month,
  size: 48,
  color: textCLR,
);

final sijaintiLinkki = GestureDetector(
  onTap: () async {
    final Uri url = Uri.parse('https://maps.app.goo.gl/Evzre87stuKj8u3f7');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  },
  child: Text(
    'Äijälätalo, Kangasala',
    style: const TextStyle(
      fontSize: 18,
      color: textCLR,
      decoration: TextDecoration.underline,
      decorationColor: Colors.blue, // Optional: Add underline
    ),
  ),
);

final aikaTeksti = Text(
  '31.5. n. klo 14:00 alkaen',
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: textCLR,
  ),
);

// ANCHOR FAQ

final faqOtsikko = Text(
  'FAQ',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 255, 229, 97),
  ),
);

final kysymys0 = Text(
  'Miten ilmoittaudun saapuvaksi?',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textCLR,
  ),
);

final vastaus0 = Text(
  'Ilmoittaudu viestillä 12.5. mennessä kertoen, kuinka moni on tulossa paikalle teiltä.',
  textAlign: TextAlign.center,
  style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textCLR,
  ),
);

final kysymys1 = Text(
  'Onko tarjolla ruokaa?',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textCLR,
  ),
);

final vastaus1 = Text(
  'Tarjolla on kevyttä ruokaa ja herkullista herkkua.',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textCLR,
  ),
);

final kysymys2 = Text(
  'Erikoisruokavaliot?',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textCLR,
  ),
);

final vastaus2 = Text(
  'Lähes kaikille on jotakin, ilmoitathan harvinaislaatuisemmat rajoitteet etukäteen!',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textCLR,
  ),
);

final kysymys3 = Text(
  'Mitä toisin lahjaksi?',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textCLR,
  ),
);

final vastaus3 = Text(
  'Lahjaa ei tarvitse tuoda, jos haluat kuitenkin muistaa jollakin, tässä ohjeet:',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textCLR,
  ),
);

final vastaus31 = Text(
  ' + Kylmä käteinen',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: const Color.fromARGB(255, 9, 255, 0),
  ),
);
final vastaus32 = Text(
  ' + Lahjakortit',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: const Color.fromARGB(255, 9, 255, 0),
  ),
);
final vastaus33 = Text(
  ' + Aineettomat lahjat (teatteriliput, tms.)',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: const Color.fromARGB(255, 9, 255, 0),
  ),
);
final vastaus34 = Text(
  ' + Lahjoitukset (WWF, Punainen risti, Animalia...)',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: const Color.fromARGB(255, 9, 255, 0),
  ),
);
final vastaus35 = Text(
  ' - Aineelliset lahjat',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: const Color.fromARGB(255, 255, 0, 0),
  ),
);

final column1Container = Container(
  color: const Color.fromARGB(44, 63, 106, 127),
  child: Center(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          faqOtsikko,
          SizedBox(width: 10),
          kysymys0,
          vastaus0,
          kysymys1,
          vastaus1,
          kysymys2,
          vastaus2,
          kysymys3,
          vastaus3,
          vastaus31,
          vastaus32,
          vastaus33,
          vastaus34,
          vastaus35,
        ],
      ),
    ),
  ),
);

// ANCHOR Peli

final PeliOtsikko = Text(
  'Sinustakin ylioppilas?',
  textAlign: TextAlign.center,
    style: GoogleFonts.getFont(
    'Lexend',
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 255, 229, 97),
  ),
);

final column2Container = Container(
  color: const Color.fromARGB(44, 121, 106, 75),
  child: Center(
  child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Center(child: Column(children: [PeliOtsikko, SYOpeliStart()]))
)));

final gpContainer = Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/BGcollageDARK.jpg'), // Replace with your image path
      repeat: ImageRepeat.repeat, // Tile the image
    ),
  ),
  child: Center(
  child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Center(child: Column(children: [PeliOtsikko, SYOpeli()]))
)));

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(body: gpContainer, backgroundColor: const Color.fromARGB(255, 0, 0, 0));
  }}
final columnSpacing = SizedBox(width: 20);

final columnPadding = const EdgeInsets.all(8.0);

final tikki = Column(
  children: [
    SizedBox(height: 20),
    Divider(
      color: const Color.fromARGB(255, 255, 255, 255),
      thickness: 2,
      indent: 20,
      endIndent: 20,
      height: 1,
    ),
    Divider(
      color: const Color.fromARGB(255, 162, 162, 162),
      thickness: 2,
      indent: 20,
      endIndent: 20,
      height: 1,
    ),
    SizedBox(height: 20),
  ],
);