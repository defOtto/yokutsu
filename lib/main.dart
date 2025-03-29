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
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
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
              komitea,
              kaunisTeksti,
              Row(children: [sijaintiLogo, sijaintiLinkki], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [aikaLogo, aikaTeksti], mainAxisAlignment: MainAxisAlignment.center),
              tikki,
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

class MyInteractiveText extends StatefulWidget {
  @override
  _MyInteractiveTextState createState() => _MyInteractiveTextState();
}

class _MyInteractiveTextState extends State<MyInteractiveText> {
  Color textColor = const Color.fromARGB(255, 255, 0, 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Interactive text',
          style: TextStyle(color: textColor),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              textColor =
                  textColor == Colors.black ? Colors.red : Colors.black;
            });
          },
          child: Text('Change Color'),
        ),
      ],
    );
  }
}