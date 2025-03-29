import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

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