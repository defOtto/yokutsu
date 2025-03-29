import 'package:flutter/material.dart';
import 'widget_store.dart'; // Import the my_widgets.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 137, 255, 3),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/BGcollageDARK.jpg'), // Replace with your image path
              repeat: ImageRepeat.repeat, // Tile the image
            ),
          ),
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(children: [lakkiKuva,tervetuloToivotus,lakkiKuvaIso], mainAxisAlignment: MainAxisAlignment.center),
              kaunisTeksti,
              Row(children: [sijaintiLogo, sijaintiLinkki], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [aikaLogo, aikaTeksti], mainAxisAlignment: MainAxisAlignment.center),
              Divider(),
              columnSpacing,
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: columnPadding,
                        child: column1Container,
                      ),
                    ),
                    columnSpacing,
                    Expanded(
                      child: Padding(
                        padding: columnPadding,
                        child: column2Container,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),),
      ),
    );
  }
}