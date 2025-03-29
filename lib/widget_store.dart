// my_widgets.dart

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'interactive.dart';
// Yläosio 
final tervetuloToivotus = Text(
  'Teidät on toivotettu tervetulleiksi',
  style: GoogleFonts.getFont('Martel',fontSize: 24, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 255, 255, 255)),
);

final lakkiKuva = Image.asset('assets/images/YOlakkisuora.webp', width: 20, height: 20);

final lakkiKuvaIso = Image.asset('assets/images/YOlakkiisometric.png', width: 20, height: 20);

final komitea = FittedBox(fit: BoxFit.scaleDown, child: Row(children: [lakkiKuva,tervetuloToivotus,lakkiKuvaIso], mainAxisAlignment: MainAxisAlignment.center));
              
final kaunisTeksti = Text(
  'Oton ylioppilasjuhlaan',
  style: GoogleFonts.getFont('Mea Culpa',fontSize: 45, color: const Color.fromARGB(255, 218, 204, 7)),
);

final sijaintiLogo = Icon(Icons.pin_drop_outlined, size: 48, color: const Color.fromARGB(255, 89, 58, 204));

final aikaLogo = Icon(Icons.calendar_month, size: 48, color: const Color.fromARGB(255, 89, 58, 204));

final sijaintiLinkki = GestureDetector(
            onTap: () async {
              final Uri url = Uri.parse('https://maps.app.goo.gl/Evzre87stuKj8u3f7');
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
            child: Text(
              'Äijälätalo, Kangasala',
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 89, 58, 204),
                decoration: TextDecoration.underline, // Optional: Add underline
              ),
            ),
);

final aikaTeksti = Text(
'31.5. klo XX:00',
style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 255, 255, 255)),
);
//}

final faqOtsikko = Text(
  'FAQ',
  style: GoogleFonts.getFont('Lexend',fontSize: 48, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255)),
);

final kysymys0 = Text(
  'Miten ilmoittaudun saapuvaksi?',
  style: GoogleFonts.getFont('Lexend',fontSize: 21, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255)),
);

final vastaus0 = Text(
  'Ilmoittaudu viestillä kertoen, kuinka moni on tulossa paikalle teiltä.',
  style: GoogleFonts.getFont('Lexend',fontSize: 16, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 255, 255, 255)),
);

final kysymys1 = Text(
  'Onko tarjolla ruokaa?',
  style: GoogleFonts.getFont('Lexend',fontSize: 21, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255)),
);

final vastaus1 = Text(
  'Tarjolla on kevyttä ruokaa ja herkullista herkkua.',
  style: GoogleFonts.getFont('Lexend',fontSize: 16, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 255, 255, 255)),
);

final kysymys2 = Text(
  'Erikoisruokavaliot?',
  style: GoogleFonts.getFont('Lexend',fontSize: 21, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255)),
);

final vastaus2 = Text(
  'Lähes kaikille on jotakin, ilmoitathan harvinaislaatuisemmat rajoitteet etukäteen!',
  style: GoogleFonts.getFont('Lexend',fontSize: 16, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 255, 255, 255)),
);

final kysymys3 = Text(
  'Mitä toisin lahjaksi?',
  style: GoogleFonts.getFont('Lexend',fontSize: 21, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255)),
);

final vastaus3 = Text(
  'Lahjaa ei tarvitse tuoda, jos haluat kuitenkin muistaa jollakin tässä ohjeet:',
  style: GoogleFonts.getFont('Lexend',fontSize: 16, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 255, 255, 255)),
);

final vastaus31 = Text(
  ' + Kylmä käteinen                               ',
  style: GoogleFonts.getFont('Lexend',fontSize: 16, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 9, 255, 0)),
);
final vastaus32 = Text(
  ' + Lahjakortit                                    ',
  style: GoogleFonts.getFont('Lexend',fontSize: 16, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 9, 255, 0)),
);
final vastaus33 = Text(
  ' + Aineettomat lahjat (teatteriliput, tms)',
  style: GoogleFonts.getFont('Lexend',fontSize: 16, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 9, 255, 0)),
);
final vastaus34 = Text(
  ' + Lahjoitukset (WWF, Punainen risti, animalia...)',
  style: GoogleFonts.getFont('Lexend',fontSize: 16, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 9, 255, 0)),
);
final vastaus35 = Text(
  ' - Aineelliset lahjat                             ',
  style: GoogleFonts.getFont('Lexend',fontSize: 16, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 255, 0, 0)),
);

final column1Container = Container(
  color: const Color.fromARGB(44, 122, 124, 125),
  child: Center(child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(children: [
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
    vastaus35 ]))));

final column2Container = Container(
  color: Colors.orange,
  child: Center(child: MyInteractiveText()),
);

final columnSpacing = SizedBox(width: 20);

final columnPadding = const EdgeInsets.all(8.0);


final tikki = Column(children: [
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
  SizedBox(height: 20),]
);