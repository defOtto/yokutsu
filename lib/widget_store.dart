// my_widgets.dart

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

final tervetuloToivotus = Text(
  'Sinut on toivotettu tervetulleeksi',
  style: GoogleFonts.getFont('Martel',fontSize: 24, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 255, 255, 255)),
);

final lakkiKuva = Image.asset('assets/images/YOlakkisuora.webp', width: 20, height: 20);

final lakkiKuvaIso = Image.asset('assets/images/YOlakkiisometric.png', width: 20, height: 20);

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
  '31.5. klo 19:00',
  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 255, 255, 255)),
);

final column1Container = Container(
  color: Colors.lightBlue,
  child: Center(child: Text('Column 1')),
);

final column2Container = Container(
  color: Colors.orange,
  child: Center(child: Text('Column 2')),
);

final columnSpacing = SizedBox(width: 20);

final columnPadding = const EdgeInsets.all(8.0);
